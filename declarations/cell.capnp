@0xd426a39d020317c1;
using Link = import "link.capnp";
using Encoding = import "encoding.capnp";
using import "mode.capnp".FieldSupport;

struct Cell {
       data @0: List(Chunk);
       struct Chunk {
              order @0: Int64;
              data @1: Data;
       }
       encoding @1: Encoding.Encoding;
       mime @2: Text;
       tags @3: List(Tag);
       links @4: List(Direction);
       coords @5: List(Position);
}

struct Tag {
       name @0: Text;
       set @1: Bool;
}

struct Direction {
       dim @0: Int64;
       link @1: Link.Link;
}

struct Position {
       dimension @0: Int32;
       location @1: Float64;
}

enum Field {
       data @0;
       encoding @1;
       mime @2;
       tags @3;
       links @4;
       coords @5;
}

struct CellFieldMode {
       field @0: Field;
       mode @1: FieldSupport;
}
