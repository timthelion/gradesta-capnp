enum FieldSupport {
     FULL @0;
     NONE @1;
     EMULATE @2;
}

struct Mode(FieldId) {
       field @0: FieldId;
       support @1: FieldSupport;
}