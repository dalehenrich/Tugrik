gci api - non-blocking
executeStringNB: source sourceClass: sourceClassOopType contextObject: contextObjectOopType symbolList: symbolListOopType flags: flags environmentId: environmentId
	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			lib
				apiGciSetSessionId: gciSessionNumber;
				apiGciNbExecuteStrFromContextDbg_: source
					a: source size
					a: sourceClassOopType
					a: contextObjectOopType
					a: symbolListOopType
					a: flags
					a: environmentId ]