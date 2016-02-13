API
apiGciTsResolveSymbolObj: sess a: str a: symbolList a: err
"EXTERN_GCI_DEC(OopType) GciTsResolveSymbolObj(GciSession sess,
                OopType str, OopType symbolList, GciErrSType *err);
  // result OOP_ILLEGAL if an error was returned in *err
"
	<apicall: GsOopType 'GciTsResolveSymbolObj' (GciTsSession char* GsOopType GciTs32xErrSType*) >
	^self externalCallFailed
	

	