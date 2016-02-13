API
apiGciTsLogout: sess a: err
"EXTERN_GCI_DEC(BoolType) GciTsLogout(GciSession sess, GciErrSType *err);
    // if result is FALSE, an error was returned in *err
"
	<apicall: bool 'GciTsLogout' (GciTsSession GciTs32xErrSType*) >
	^self externalCallFailed
	

	