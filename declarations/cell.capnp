using Link = import "link.capnp";
using Encoding = import "encoding.capnp";
using Map = import "map.capnp";

struct Cell {
       data @0: List(Chunk);
       struct Chunk {
              order @0: Uint64;
              data @1: Data;
       }
       encoding @1: Encoding.Encoding;
       mime @2: Text;
       tags @3: Map.Map(Text, Text);
       links @4: Map.Map(Int64, Link.Link);
       coords @5: Map.Map(Int32, Float64);
}

enum Fields {
       data @0;
       encoding @1;
       mime @2;
       tags @3;
       links @4;
       coords @5;
}
