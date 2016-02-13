API
apiGciTsResolveSymbol: sess a: str a: symbolList a: err
"EXTERN_GCI_DEC(OopType) GciTsResolveSymbol(GciSession sess,
        const char* str, OopType symbolList, GciErrSType *err);
  // result OOP_ILLEGAL if an error was returned in *err
"
	<apicall: GsOopType 'GciTsResolveSymbol' (GciTsSession char* GsOopType GciTs32xErrSType*) >
	^self externalCallFailed
	

	