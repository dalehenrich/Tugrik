API
apiGciTsGetFreeOops: sess a: buf a: numOopsRequested a: err
"EXTERN_GCI_DEC(int) GciTsGetFreeOops(GciSession sess, OopType *buf, int numOopsRequested, GciErrSType *err);
    // result is number of Oops in buf, or -1 if an error was return in *err .
"
	<apicall: int 'GciTsGetFreeOops' (GciTsSession GsOopType* int GciTs32xErrSType*) >
	^self externalCallFailed
	

	