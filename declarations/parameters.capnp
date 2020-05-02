@0x8930168de3408f87;

struct Parameters {
       params @0: List(Parameter);
       session_keys @1: List(Text);
}

struct Parameter {
       key @0: Text;
       val @1: Text;
}