

#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>
#include <stack>
#include <vector>
#include <utility>
#include <unordered_map>
#include <unordered_set>
#include "semant.h"
#include <cassert>
#include "utilities.h"


extern int semant_debug;
extern char *curr_filename;

//////////////////////////////////////////////////////////////////////
//
// Symbols
//
// For convenience, a large number of symbols are predefined here.
// These symbols include the primitive type and method names, as well
// as fixed names used by the runtime system.
//
//////////////////////////////////////////////////////////////////////
static Symbol 
    arg,
    arg2,
    Bool,
    concat,
    cool_abort,
    copy,
    Int,
    in_int,
    in_string,
    IO,
    length,
    Main,
    main_meth,
    No_class,
    No_type,
    Object,
    out_int,
    out_string,
    prim_slot,
    self,
    SELF_TYPE,
    Str,
    str_field,
    substr,
    type_name,
    val;
//
// Initializing the predefined symbols.
//
static void initialize_constants(void)
{
    arg         = idtable.add_string("arg");
    arg2        = idtable.add_string("arg2");
    Bool        = idtable.add_string("Bool");
    concat      = idtable.add_string("concat");
    cool_abort  = idtable.add_string("abort");
    copy        = idtable.add_string("copy");
    Int         = idtable.add_string("Int");
    in_int      = idtable.add_string("in_int");
    in_string   = idtable.add_string("in_string");
    IO          = idtable.add_string("IO");
    length      = idtable.add_string("length");
    Main        = idtable.add_string("Main");
    main_meth   = idtable.add_string("main");
    //   _no_class is a symbol that can't be the name of any 
    //   user-defined class.
    No_class    = idtable.add_string("_no_class");
    No_type     = idtable.add_string("_no_type");
    Object      = idtable.add_string("Object");
    out_int     = idtable.add_string("out_int");
    out_string  = idtable.add_string("out_string");
    prim_slot   = idtable.add_string("_prim_slot");
    self        = idtable.add_string("self");
    SELF_TYPE   = idtable.add_string("SELF_TYPE");
    Str         = idtable.add_string("String");
    str_field   = idtable.add_string("_str_field");
    substr      = idtable.add_string("substr");
    type_name   = idtable.add_string("type_name");
    val         = idtable.add_string("_val");
}



ClassTable::ClassTable(Classes classes)
: semant_errors(0),
  error_stream(cerr),
  parents_{},
  methods_{},
  attrs_{}
{
  install_basic_classes();

  for (int i = classes->first(); classes->more(i); i = classes->next(i)) {
    auto class_ = classes->nth(i);
    auto name = class_->getName(), parent = class_->getParent();

    if (name == SELF_TYPE || name == Str || name == Int || name == Bool || name == Object || name == IO) {
      semant_error(class_) << "Invalid class name\n";
      break;
    }

    if (parent == SELF_TYPE || parent == Str || parent == Int || parent == Bool) {
      semant_error(class_) << "Invalid parent class name\n";
      break;
    }

    if (hasClass(name)) {
      semant_error(class_) << "Class redefinition is not allowed\n";
      break;
    }

    if (inherits(class_, name, parent)) {
      semant_error(class_) << "Circular inheritance is not allowed\n";
      break;
    }

    addInheritance(parent, name);
    class_->declareFeatures(this);
  }
}

void ClassTable::install_basic_classes() {

    // The tree package uses these globals to annotate the classes built below.
   // curr_lineno  = 0;
    Symbol filename = stringtable.add_string("<basic class>");
    
    // The following demonstrates how to create dummy parse trees to
    // refer to basic Cool classes.  There's no need for method
    // bodies -- these are already built into the runtime system.
    
    // IMPORTANT: The results of the following expressions are
    // stored in local variables.  You will want to do something
    // with those variables at the end of this method to make this
    // code meaningful.

    // 
    // The Object class has no parent class. Its methods are
    //        abort() : Object    aborts the program
    //        type_name() : Str   returns a string representation of class name
    //        copy() : SELF_TYPE  returns a copy of the object
    //
    // There is no need for method bodies in the basic classes---these
    // are already built in to the runtime system.

    Class_ Object_class =
	class_(Object, 
	       No_class,
	       append_Features(
			       append_Features(
					       single_Features(method(cool_abort, nil_Formals(), Object, no_expr())),
					       single_Features(method(type_name, nil_Formals(), Str, no_expr()))),
			       single_Features(method(copy, nil_Formals(), SELF_TYPE, no_expr()))),
	       filename);

    // 
    // The IO class inherits from Object. Its methods are
    //        out_string(Str) : SELF_TYPE       writes a string to the output
    //        out_int(Int) : SELF_TYPE            "    an int    "  "     "
    //        in_string() : Str                 reads a string from the input
    //        in_int() : Int                      "   an int     "  "     "
    //
    Class_ IO_class = 
	class_(IO, 
	       Object,
	       append_Features(
			       append_Features(
					       append_Features(
							       single_Features(method(out_string, single_Formals(formal(arg, Str)),
										      SELF_TYPE, no_expr())),
							       single_Features(method(out_int, single_Formals(formal(arg, Int)),
										      SELF_TYPE, no_expr()))),
					       single_Features(method(in_string, nil_Formals(), Str, no_expr()))),
			       single_Features(method(in_int, nil_Formals(), Int, no_expr()))),
	       filename);  

    //
    // The Int class has no methods and only a single attribute, the
    // "val" for the integer. 
    //
    Class_ Int_class =
	class_(Int, 
	       Object,
	       single_Features(attr(val, prim_slot, no_expr())),
	       filename);

    //
    // Bool also has only the "val" slot.
    //
    Class_ Bool_class =
	class_(Bool, Object, single_Features(attr(val, prim_slot, no_expr())),filename);

    //
    // The class Str has a number of slots and operations:
    //       val                                  the length of the string
    //       str_field                            the string itself
    //       length() : Int                       returns length of the string
    //       concat(arg: Str) : Str               performs string concatenation
    //       substr(arg: Int, arg2: Int): Str     substring selection
    //       
    Class_ Str_class =
	class_(Str, 
	       Object,
	       append_Features(
			       append_Features(
					       append_Features(
							       append_Features(
									       single_Features(attr(val, Int, no_expr())),
									       single_Features(attr(str_field, prim_slot, no_expr()))),
							       single_Features(method(length, nil_Formals(), Int, no_expr()))),
					       single_Features(method(concat, 
								      single_Formals(formal(arg, Str)),
								      Str, 
								      no_expr()))),
			       single_Features(method(substr, 
						      append_Formals(single_Formals(formal(arg, Int)), 
								     single_Formals(formal(arg2, Int))),
						      Str, 
						      no_expr()))),
	       filename);

  auto classes = {Object_class, Int_class, IO_class, Bool_class, Str_class};
  for (auto& val : classes) {
    //addClass(val->getName(), val);
    addInheritance(val->getParent(), val->getName());
    val->declareFeatures(this);
  }
}

// TODO: finish it
bool ClassTable::inherits(Class_ curr, Symbol parent, Symbol child) const {
  if (child == No_type) return true;
  if (child == parent) return true; // probably BUG
  if (parent == SELF_TYPE && child != SELF_TYPE) return false;
  if (parent != SELF_TYPE && child == SELF_TYPE) return inherits(curr, parent, curr->getName());

  for (auto it = parents_.find(child), end = parents_.end(); it != end; it = parents_.find(it->second)) {
    if (it->second == parent) return true;
  }

  return false;
}

void ClassTable::addInheritance(Symbol parent, Symbol child) {
  assert(parent != child);
  assert(parents_.find(child) == parents_.end() && "Child was already defined");
  parents_[child] = parent;
}

bool ClassTable::hasClass(Symbol name) const {
  return parents_.find(name) != parents_.end();
}

Symbol getObjectType(Symbol name, Class_ clazz, ClassTable* table, SymTab& attrs) {
  if (auto val = attrs.lookup(name)) return *val;
  if (auto val = table->getAttr(clazz->getName(), name)) return val;
  if (auto val = table->getInheritedAttr(clazz->getName(), name)) return val;
  return nullptr;
}

method_class* ClassTable::getMethod(Symbol className, Symbol methodName) {
  assert(hasClass(className));

  auto& methods = methods_[className];
  auto it = methods.find(methodName);
  if (it == methods.end()) return nullptr;

  return it->second;
}

method_class* ClassTable::getInheritedMethod(Symbol className, Symbol methodName) {
  assert(hasClass(className));

  for (auto type = parents_[className]; hasClass(type); type = parents_[type]) {
    if (auto method = getMethod(type, methodName)) return method;
  }

  return nullptr;
}

Symbol ClassTable::getAttr(Symbol className, Symbol name) {
  assert(hasClass(className));

  auto& attrs = attrs_[className];
  auto it = attrs.find(name);
  if (it == attrs.end()) return nullptr;

  return it->second;
}

Symbol ClassTable::getInheritedAttr(Symbol className, Symbol name) {
  assert(hasClass(className));

  for (auto type = parents_[className]; hasClass(type); type = parents_[type]) {
    if (auto attr = getAttr(type, name)) return attr;
  }

  return nullptr;
}

void ClassTable::addMethod(Symbol clazz, method_class* m) {
  assert(hasClass(clazz));
  methods_[clazz][m->getName()] = m;
}

void ClassTable::addAttr(Symbol clazz, attr_class* attr) {
  assert(hasClass(clazz));
  attrs_[clazz][attr->getName()] = attr->getType();
}

////////////////////////////////////////////////////////////////////
//
// semant_error is an overloaded function for reporting errors
// during semantic analysis.  There are three versions:
//
//    ostream& ClassTable::semant_error()                
//
//    ostream& ClassTable::semant_error(Class_ c)
//       print line number and filename for `c'
//
//    ostream& ClassTable::semant_error(Symbol filename, tree_node *t)  
//       print a line number and filename
//
///////////////////////////////////////////////////////////////////

ostream& ClassTable::semant_error(Class_ c)
{                                                             
    return semant_error(c->get_filename(),c);
}    

ostream& ClassTable::semant_error(Symbol filename, tree_node *t)
{
    error_stream << filename << ":" << t->get_line_number() << ": ";
    return semant_error();
}

ostream& ClassTable::semant_error()                  
{                                                 
    semant_errors++;                            
    return error_stream;
} 

Symbol ClassTable::lca(Class_ curr, Symbol a, Symbol b) {
  if (a == No_type) return b;
  if (b == No_type) return a;
  if (a == b) return a;
  if (a == SELF_TYPE) return lca(curr, curr->getName(), b);
  if (b == SELF_TYPE) return lca(curr, a, curr->getName());

  //assert(hasClass(a) && hasClass(b));

  std::unordered_set<Symbol> check{a};

  auto it = parents_.find(a), end = parents_.end();

  for (; it != end; it = parents_.find(it->second)) {
    check.insert(it->second);
  }

  if (check.count(b) != 0) return b;

  it = parents_.find(b);
  for (; it != end; it = parents_.find(it->second)) {
    if (check.count(it->second) != 0) return it->second;
  }

  assert(false && "No lca type");
}

void class__class::semant(ClassTable* table, SymTab& attrs) {
  attrs.enterscope();
  attrs.addid(self, &SELF_TYPE);

  for (int i = features->first(); features->more(i); i = features->next(i)) {
    attrs.enterscope();
    features->nth(i)->semant(this, table, attrs);
    attrs.exitscope();
  }

  attrs.exitscope();
}

void class__class::declareFeatures(ClassTable* table) {
  for (int i = features->first(); features->more(i); i = features->next(i)) {
    features->nth(i)->declare(this, table);
  }
}

bool method_class::checkInheritanceTypes(method_class* a) {
  if (a == nullptr) return true; // doesn't inherit anything

  bool result = a->return_type == this->return_type;
  result = result && this->formals->len() == a->formals->len();

  for (int i = formals->first(); formals->more(i) && result; i = formals->next(i)) {
    result = result && this->formals->nth(i)->getType() == a->formals->nth(i)->getType();
  }

  return result;
}

void method_class::declare(Class_ clazz, ClassTable* table) {
  if (table->getMethod(clazz->getName(), name) != nullptr) {
    table->semant_error(clazz) << "Method redefinition is not allowed\n";
  }

  table->addMethod(clazz->getName(), this); // NOTE: possibly need a static_cast<method_class*>
}

void attr_class::declare(Class_ clazz, ClassTable* table) {
  if (name == self) {
    table->semant_error(clazz) << "Attribute's name can't be 'self'\n";
  }
  
  if (table->getAttr(clazz->getName(), name) != nullptr) {
    table->semant_error(clazz) << "Attribute redefinition is not allowed\n";
  }

  table->addAttr(clazz->getName(), this);
}

void attr_class::semant(Class_ clazz, ClassTable* table, SymTab& attrs) {
  if (table->getInheritedAttr(clazz->getName(), name) != nullptr) {
    table->semant_error(clazz) << "Redefinition of an inherited attribute\n";
  }

  //attrs.addid(name, &type_decl);

  attrs.enterscope();
  auto type = init->typecheck(clazz, table, attrs);
  attrs.exitscope();

  if (!table->inherits(clazz, type_decl, type)) {
    table->semant_error(clazz) << "Type of the initialization expression does not conform to the declared type of the attribute " << name << std::endl;
  }
}

void formal_class::semant(Class_ clazz, ClassTable* table, SymTab& symtab) {
  if (name == self) {
    table->semant_error(clazz) << "Parameter's name can't be 'self'\n";
  }

  if (symtab.probe(name) != nullptr) {
    table->semant_error(clazz) << "Duplicate parameter names are not allowed\n";
  }

  if (type_decl == SELF_TYPE || !table->hasClass(type_decl)) {
    table->semant_error(clazz) << "Invalid parameter's type\n";
  }

  symtab.addid(name, &type_decl); // TODO: verify
}

void method_class::semant(Class_ clazz, ClassTable* table, SymTab& attrs) {
  if (!checkInheritanceTypes(table->getInheritedMethod(clazz->getName(), name))) {
    table->semant_error(clazz) << "Inherited method has wrong signature\n";
  }

  attrs.enterscope();

  for (int i = formals->first(); formals->more(i); i = formals->next(i)) {
    formals->nth(i)->semant(clazz, table, attrs);
  }

  attrs.enterscope();
  auto bodyType = expr->typecheck(clazz, table, attrs);
  attrs.exitscope();

  if (!table->inherits(clazz, return_type, bodyType)) {
    table->semant_error(clazz) << "Returned type of a method " << name
        << " doesn't conform to the declared return type\n";
  }

  attrs.exitscope();
}

Symbol assign_class::typecheck(Class_ clazz, ClassTable* table, SymTab& attrs) {
  auto rtype = expr->typecheck(clazz, table, attrs);

  if (name == self) {
    table->semant_error(clazz) << "Assignment to 'self' is not allowed" << std::endl;
    return type = Object;
  }

  auto ltype = getObjectType(name, clazz, table, attrs);

  if (ltype == nullptr) {
    table->semant_error(clazz) << "Undeclared identifier " << name << std::endl;
    return type = Object;
  } else if (!table->inherits(clazz, ltype, rtype)) {
    table->semant_error(clazz) << "Assignment expression type does not conform to the declared one: in " << name << std::endl;
    return type = ltype;
  }

  return type = rtype;
}

bool method_class::checkArgs(Class_ clazz, ClassTable* table, SymTab& attrs, Expressions actual) {
  bool result = actual->len() == formals->len();

  for (int i = actual->first(); actual->more(i) && result; i = actual->next(i)) {
    auto formal = formals->nth(i)->getType();
    auto arg = actual->nth(i)->typecheck(clazz, table, attrs);
    result = result && table->inherits(clazz, formal, arg);
  }

  return result;
}

Symbol static_dispatch_class::typecheck(Class_ clazz, ClassTable* table, SymTab& attrs) {
  if (type_name != SELF_TYPE && !table->hasClass(type_name)) {
    table->semant_error(clazz) << "Undefined type: " << type_name << std::endl;
    return type = Object;
  }

  auto caller = expr->typecheck(clazz, table, attrs);

  assert(caller == SELF_TYPE || table->hasClass(caller));

  if (!table->inherits(clazz, type_name, caller)) {
    table->semant_error(clazz) << "In static dispatch expression caller object type doesn't conform to the declared dispatch type" << std::endl;
    return type = Object; // probably a BUG;
  }

  auto method = table->getMethod(type_name, name) ?: table->getInheritedMethod(type_name, name);
  if (method == nullptr) {
    table->semant_error(clazz) << "Static dispatch to undefined method " << name << std::endl;
    return type = Object;
  }

  if (!method->checkArgs(clazz, table, attrs, actual)) {
    table->semant_error(clazz) << "Wrong method signature during dispatch resolution\n";
    return type = Object;
  }

  auto ret = method->getRetType();
  if (ret != SELF_TYPE && !table->hasClass(ret)) {
    table->semant_error(clazz) << "Return type class does not exist\n";
    return type = Object;
  }

  return type = (ret == SELF_TYPE ? caller : ret);
}

Symbol dispatch_class::typecheck(Class_ clazz, ClassTable* table, SymTab& attrs) {
  auto caller = expr->typecheck(clazz, table, attrs);

  assert(caller == SELF_TYPE || table->hasClass(caller));

  auto type_name = caller == SELF_TYPE ? clazz->getName() : caller;
  auto method = table->getMethod(type_name, name) ?: table->getInheritedMethod(type_name, name);
  if (method == nullptr) {
    table->semant_error(clazz) << "Dispatch to undefined method " << name << std::endl;
    return type = Object;
  }

  if (!method->checkArgs(clazz, table, attrs, actual)) {
    table->semant_error(clazz) << "Wrong method signature during dispatch resolution\n";
    return type = Object;
  }

  auto ret = method->getRetType();
  if (ret != SELF_TYPE && !table->hasClass(ret)) {
    table->semant_error(clazz) << "Return type class does not exist\n";
    return type = Object;
  }

  return type = (ret == SELF_TYPE ? caller : ret);
}

Symbol cond_class::typecheck(Class_ clazz, ClassTable* table, SymTab& attrs) {
  if (pred->typecheck(clazz, table, attrs) != Bool) {
    table->semant_error(clazz) << "'if' predicate type must be Bool\n";
  }

  auto then = then_exp->typecheck(clazz, table, attrs);
  auto else_ = else_exp->typecheck(clazz, table, attrs);

  return type = table->lca(clazz, then, else_);
}

Symbol loop_class::typecheck(Class_ clazz, ClassTable* table, SymTab& attrs) {
  if (pred->typecheck(clazz, table, attrs) != Bool) {
    table->semant_error(clazz) << "Loop predicate type must be Bool\n";
  }

  body->typecheck(clazz, table, attrs);
  return type = Object;
}

Symbol typcase_class::typecheck(Class_ clazz, ClassTable* table, SymTab& attrs) {
  expr->typecheck(clazz, table, attrs);

  std::unordered_set<Symbol> types;

  auto result = No_type;
  for (int i = cases->first(); cases->more(i); i = cases->next(i)) {
    auto branch = cases->nth(i);
    auto type = branch->typecheck(clazz, table, attrs);
    if (types.count(branch->getType()) != 0)
      table->semant_error(clazz) << "Case branches have identical types\n";
    types.insert(branch->getType());
    result = table->lca(clazz, result, type); // NOTE: check for SELF_TYPE
  }

  return type = result;
}

Symbol branch_class::typecheck(Class_ clazz, ClassTable* table, SymTab& attrs) {
  if (type_decl != SELF_TYPE && !table->hasClass(type_decl)) {
    table->semant_error(clazz) << "Undefined type in 'case' branch\n";
    return Object;
  }

  attrs.enterscope();
  attrs.addid(name, &type_decl);
  auto type = expr->typecheck(clazz, table, attrs);
  attrs.exitscope();
  return type;
}

Symbol block_class::typecheck(Class_ clazz, ClassTable* table, SymTab& attrs) {
  Symbol result;

  for (int i = body->first(); body->more(i); i = body->next(i)) {
    result = body->nth(i)->typecheck(clazz, table, attrs);
  }

  return type = result;
}

Symbol let_class::typecheck(Class_ clazz, ClassTable* table, SymTab& attrs) {
  if (type_decl != SELF_TYPE && !table->hasClass(type_decl))
    table->semant_error(clazz) << "Undefined type in 'let' expression\n";

  if (identifier == self)
    table->semant_error(clazz) << "'self' cannot be used as an identifier name\n";

  auto initType = init->typecheck(clazz, table, attrs);
  if (!table->inherits(clazz, type_decl, initType)) {
    table->semant_error(clazz) << "Init expression type doesn't conform to the declared type\n";
  }

  attrs.enterscope();
  attrs.addid(identifier, &type_decl);
  type = body->typecheck(clazz, table, attrs);
  attrs.exitscope();
  return type;
}

Symbol plus_class::typecheck(Class_ clazz, ClassTable* table, SymTab& attrs) {
  auto a = e1->typecheck(clazz, table, attrs);
  auto b = e2->typecheck(clazz, table, attrs);

  if (a == Int && b == Int)
    return type = Int;

  table->semant_error(clazz) << "Operand types are not Int for '+' operator\n";
  return type = Object;
}

Symbol sub_class::typecheck(Class_ clazz, ClassTable* table, SymTab& attrs) {
  auto a = e1->typecheck(clazz, table, attrs);
  auto b = e2->typecheck(clazz, table, attrs);

  if (a == Int && b == Int)
    return type = Int;

  table->semant_error(clazz) << "Operand types are not Int for '-' operator\n";
  return type = Object;
}

Symbol mul_class::typecheck(Class_ clazz, ClassTable* table, SymTab& attrs) {
  auto a = e1->typecheck(clazz, table, attrs);
  auto b = e2->typecheck(clazz, table, attrs);

  if (a == Int && b == Int)
    return type = Int;

  table->semant_error(clazz) << "Operand types are not Int for '*' operator\n";
  return type = Object;
}

Symbol divide_class::typecheck(Class_ clazz, ClassTable* table, SymTab& attrs) {
  auto a = e1->typecheck(clazz, table, attrs);
  auto b = e2->typecheck(clazz, table, attrs);

  if (a == Int && b == Int)
    return type = Int;

  table->semant_error(clazz) << "Operand types are not Int for '/' operator\n";
  return type = Object;
}

Symbol neg_class::typecheck(Class_ clazz, ClassTable* table, SymTab& attrs) {
  auto a = e1->typecheck(clazz, table, attrs);

  if (a == Int)
    return type = Int;

  table->semant_error(clazz) << "Operand type is not Int for '-' unary operator\n";
  return type = Object;
}

Symbol lt_class::typecheck(Class_ clazz, ClassTable* table, SymTab& attrs) {
  auto a = e1->typecheck(clazz, table, attrs);
  auto b = e2->typecheck(clazz, table, attrs);

  if (a == Int && b == Int)
    return type = Bool;

  table->semant_error(clazz) << "Operand types are not Int for '<' operator\n";
  return type = Object;
}

Symbol eq_class::typecheck(Class_ clazz, ClassTable* table, SymTab& attrs) {
  auto a = e1->typecheck(clazz, table, attrs);
  auto b = e2->typecheck(clazz, table, attrs);

  static std::unordered_set<Symbol> basics{Int, Str, Bool};

  if ((a == Str && b == Str) ||
      (a == Int && b == Int) ||
      (a == Bool && b == Bool) ||
      (basics.count(a) == 0 && basics.count(b) == 0))
    return type = Bool;

  table->semant_error(clazz) << "Wrong operand types for '=' operator\n";
  return type = Object;
}

Symbol leq_class::typecheck(Class_ clazz, ClassTable* table, SymTab& attrs) {
  auto a = e1->typecheck(clazz, table, attrs);
  auto b = e2->typecheck(clazz, table, attrs);

  if (a == Int && b == Int)
    return type = Bool;

  table->semant_error(clazz) << "Operand types are not Int for '<=' operator\n";
  return type = Object;
}

Symbol comp_class::typecheck(Class_ clazz, ClassTable* table, SymTab& attrs) {
  auto a = e1->typecheck(clazz, table, attrs);

  if (a == Bool)
    return type = Bool;

  table->semant_error(clazz) << "Operand type is not Bool for 'not' operator\n";
  return type = Object;
}

Symbol int_const_class::typecheck(Class_ clazz, ClassTable* table, SymTab& attrs) {
  return type = Int;
}

Symbol bool_const_class::typecheck(Class_ clazz, ClassTable* table, SymTab& attrs) {
  return type = Bool;
}

Symbol string_const_class::typecheck(Class_ clazz, ClassTable* table, SymTab& attrs) {
  return type = Str;
}

Symbol new__class::typecheck(Class_ clazz, ClassTable* table, SymTab& attrs) {
  if (type_name != SELF_TYPE && !table->hasClass(type_name)) {
    table->semant_error(clazz) << "Undefined type name\n";
    return type = Object;
  }

  return type = type_name;
}

Symbol isvoid_class::typecheck(Class_ clazz, ClassTable* table, SymTab& attrs) {
  e1->typecheck(clazz, table, attrs);
  return type = Bool;
}

Symbol no_expr_class::typecheck(Class_ clazz, ClassTable* table, SymTab& attrs) {
  return type = No_type;
}

Symbol object_class::typecheck(Class_ clazz, ClassTable* table, SymTab& attrs) {
  if (name == self) return type = SELF_TYPE;
  if (auto val = getObjectType(name, clazz, table, attrs))
    return type = val;

  table->semant_error(clazz) << "Undefined identifier\n";
  return type = Object;
}

/*void dfs(ClassTable* table, Symbol node) {
  using namespace std;
  using It = vector<Symbol>::iterator;
  stack<pair<It, It>> s;

  SymTab attrs;
  MethodTable methods;

  {
    auto& children = table->children(node);
    s.push(make_pair(children.begin(), children.end()));
  }

  while (!s.empty()) {
    auto& top = s.top();
    if (top.first == top.second) {
      s.pop();
      attrs.exitscope();
      methods.exitscope();
      continue;
    }

    auto name = *top.first++;
    {
      auto& children = table->children(name);
      s.push(make_pair(children.begin(), children.end()));
    }

    attrs.enterscope();
    methods.enterscope();
    table->getClass(name)->semant(table, attrs, methods);
  }
}*/

Class_ program_class::findClass(Symbol name) const {
  for (int i = classes->first(); classes->more(i); i = classes->next(i)) {
    auto clazz = classes->nth(i);
    if (clazz->getName() == name) return clazz;
  }

  assert(false);
}

/*   This is the entry point to the semantic checker.

     Your checker should do the following two things:

     1) Check that the program is semantically correct
     2) Decorate the abstract syntax tree with type information
        by setting the `type' field in each Expression node.
        (see `tree.h')

     You are free to first do 1), make sure you catch all semantic
     errors. Part 2) can be done in a second stage, when you want
     to build mycoolc.
 */
void program_class::semant()
{
    initialize_constants();

    /* ClassTable constructor may do some semantic analysis */
    ClassTable *classtable = new ClassTable(classes);

    if (classtable->errors() == 0) {
      if (!classtable->hasClass(Main)) {
        classtable->semant_error() << "Class Main is not defined.\n";
      } else {
        auto method = classtable->getMethod(Main, main_meth);
        if (method == nullptr) {
          classtable->semant_error() << "'main' method is not defined\n";
        } else if (method->getFormals()->len() != 0) {
          classtable->semant_error() << "'main' method may not have any parameters\n";
        }
      }
    }

    if (classtable->errors() == 0) {
      for (const auto& item : classtable->parents()) {
        if (item.second != No_class && !classtable->hasClass(item.second)) {
          classtable->semant_error(findClass(item.first)) << "Inheritance from undefined class.\n";
          break;
        }
      }
    }

    if (classtable->errors() == 0) {
      SymTab symtab;

      for (int i = classes->first(); classes->more(i); i = classes->next(i)) {
        classes->nth(i)->semant(classtable, symtab);
      }
    }
    /* some semantic analysis code may go here */

    if (classtable->errors()) {
	cerr << "Compilation halted due to static semantic errors." << endl;
	exit(1);
    }
}


