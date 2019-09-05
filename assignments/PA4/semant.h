#ifndef SEMANT_H_
#define SEMANT_H_

#include <assert.h>
#include <iostream>
#include <unordered_map>
#include "cool-tree.h"
#include "stringtab.h"
#include "symtab.h"
#include "list.h"

#define TRUE 1
#define FALSE 0

class ClassTable;
typedef ClassTable *ClassTableP;

// This is a structure that may be used to contain the semantic
// information such as the inheritance graph.  You may use it or not as
// you like: it is only here to provide a container for the supplied
// methods.

class ClassTable {
private:
  int semant_errors;
  void install_basic_classes();
  ostream& error_stream;
  std::unordered_map<Symbol, Symbol> parents_;
  std::unordered_map<Symbol, std::unordered_map<Symbol, method_class*>> methods_;
  std::unordered_map<Symbol, std::unordered_map<Symbol, Symbol>> attrs_;

public:
  ClassTable(Classes);
  void addInheritance(Symbol parent, Symbol child);
  std::unordered_map<Symbol, Symbol>& parents() { return parents_; }
  bool inherits(Class_ curr, Symbol parent, Symbol child) const;
  method_class* getMethod(Symbol className, Symbol methodName);
  method_class* getInheritedMethod(Symbol className, Symbol methodName);
  Symbol getAttr(Symbol className, Symbol attrName);
  Symbol getInheritedAttr(Symbol className, Symbol attrName);
  void addMethod(Symbol clazz, method_class* m);
  void addAttr(Symbol clazz, attr_class* attr);
  Symbol lca(Class_ curr, Symbol a, Symbol b);
  bool hasClass(Symbol name) const;
  int errors() { return semant_errors; }
  ostream& semant_error();
  ostream& semant_error(Class_ c);
  ostream& semant_error(Symbol filename, tree_node *t);
};


#endif

