using Cell = import "cell.capnp";
using Map = import "map.capnp";
using Mode = import "mode.capnp";

struct CellRuntime{
       instance_id @0: Int64;
       paramenters @1: Map.Map(Text, Text);
       cell @2: Cell.Cell;
       actions @3: List(Text);

       editability @4: Editability;
       enum Editability {
           READ_ONLY @0;
           WRITABLE  @1;
           DYNAMIC   @2;
       }
       cell_modes @5: List(Mode.Mode(Cell.Fields));
       supported_dims_start @6: Int64;
       supported_dims_end   @7: Int64;
       blacklisted_dims     @8: List(Int64);
}
