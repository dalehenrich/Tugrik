API - thread safe
apiGciTsSaveObjs: sess a: buf a: count a: err
"EXTERN_GCI_DEC(BoolType) GciTsSaveObjs(GciSession sess, OopType *buf, int count, GciErrSType *err);
    // result TRUE if buf completely processed, FALSE if error returned in *err
    // since GciTs does not support user actions, this always adds the objects
    // to the PureExportSet .
"
	<apicall: bool 'GciTsSaveObjs' (GciTsSession OopType64* int GciTs32xErrSType* ) >
	^self externalCallFailed
	

	