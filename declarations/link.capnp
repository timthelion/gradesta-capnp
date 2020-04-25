using Map = import "map.capnp";

struct Link {
       discovery_daemon @0: Text;
       service @1: Text;
       path @2: List(Text);
       parameters @3: Map.Map(Text, Text);
       cell_instance_id @4: Int64;
       client_side_parameters @5: Map.Map(Text, Text);
}
