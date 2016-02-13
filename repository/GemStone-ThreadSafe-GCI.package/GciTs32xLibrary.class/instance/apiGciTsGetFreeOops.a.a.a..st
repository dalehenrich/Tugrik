API
apiGciTsGetFreeOops: sess a: buf a: numOopsRequested a: err
"EXTERN_GCI_DEC(int) GciTsGetFreeOops(GciSession sess, OopType *buf, int numOopsRequested, GciErrSType *err);
    // result is number of Oops in buf, or -1 if an error was return in *err .
"
	<apicall: int 'GciTsGetFreeOops' (GciTsSession OopType64* int GciTs32xErrSType*) >
	^self externalCallFailed
	

	