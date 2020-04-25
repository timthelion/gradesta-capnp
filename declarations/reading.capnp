using CellRuntime = import "cell_runtime.capnp";
using Map = import "map.capnp";

struct Request {
       visible_cells @0: List(CellView);
}

struct CellView {
       instance_id @0: Int64;
       parameters @1: Map.Map(Text, Text);
       visible_data_sections @2: List(Int64);
}

struct Response {
       cells @0: List(CellRuntime.CellRuntime);
}