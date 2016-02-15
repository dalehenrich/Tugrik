If the struct is changed, here is the formula for regenerating the methods: 
1. In GsOopType  class>>fields, use the `void*` definition 
2. `GsOopType compileFields`
3. `GciTs32xErrSType defineFields`
4. copy GciTs32xErrSType to GciTs32xErrSTypeX
5. reset GsOopType  class>>fields, use the `ulonglong` definition 
6. `GsOopType compileFields`
7. `GciTs32xErrSTypeX defineFields`
8. edit the methods in GciTs32xErrSType using the offset from the GciTs32xErrSTypeX methods 
9. delete the class GciTs32xErrSTypeX
10. `GciTs32xErrSType compileFields`
