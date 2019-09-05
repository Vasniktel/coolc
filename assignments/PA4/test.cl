class A {
  foo(): Object {
    let x: SELF_TYPE <- new C in 4
  };
};

class C inherits A {};

class Main inherits A {
  main(): Object {
    foo()
  };
};
