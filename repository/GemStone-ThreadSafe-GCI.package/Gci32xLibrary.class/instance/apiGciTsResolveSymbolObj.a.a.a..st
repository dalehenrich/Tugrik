API - thread safe
apiGciTsResolveSymbolObj: sess a: str a: symbolList a: err
"EXTERN_GCI_DEC(OopType) GciTsResolveSymbolObj(GciSession sess,
                OopType str, OopType symbolList, GciErrSType *err);
  // result OOP_ILLEGAL if an error was returned in *err
"
	<apicall: OopType64 'GciTsResolveSymbolObj' (GciTsSession char* OopType64 GciTs32xErrSType*) >
	^self externalCallFailed
	

	