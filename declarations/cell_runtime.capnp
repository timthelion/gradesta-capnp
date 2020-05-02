@0xcdbfee156e3c6c17;

using import "cell.capnp".Cell;
using import "cell.capnp".CellFieldMode;
using import "parameters.capnp".Parameters;

struct CellRuntime{
       instanceId @0: Int64;
       paramenters @1: Parameters;
       cell @2: Cell;
       actions @3: List(Text);

       editability @4: Editability;
       enum Editability {
           readOnly @0;
           writable  @1;
           dynamic   @2;
       }
       cellModes @5: List(CellFieldMode);
       supportedDimsStart @6: Int64;
       supporteDimsEnd   @7: Int64;
       blacklistedDims     @8: List(Int64);
}
