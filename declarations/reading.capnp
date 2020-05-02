@0xceb72cb1fdf6be97;
using CellRuntime = import "cell_runtime.capnp";
using import "parameters.capnp".Parameters;

struct Request {
       visibleCells @0: List(CellView);
}

struct CellView {
       instanceId @0: Int64;
       parameters @1: Parameters;
       visibleDataSections @2: List(Int64);
}

struct Response {
       cells @0: List(CellRuntime.CellRuntime);
}