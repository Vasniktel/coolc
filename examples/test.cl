class A {
  varS: String <- "h".concat("A");
};

class B inherits A {
  var: Int <- 3;
  method(): Int { var };
};

class Main inherits IO {
   main(): Int {{
	out_int((new B).method());
    case 4 of
      x: Int => 2;
      y: IO => 1;
    esac;
   }};
};
