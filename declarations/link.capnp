@0x9551fc1c4e6cf349;
using import "parameters.capnp".Parameters;

struct Link {
       discoveryDaemon @0: Text;
       service @1: Text;
       path @2: List(Text);
       parameters @3: Parameters;
       cellInstanceId @4: Int64;
       clientSideParameters @5: Parameters;
}
