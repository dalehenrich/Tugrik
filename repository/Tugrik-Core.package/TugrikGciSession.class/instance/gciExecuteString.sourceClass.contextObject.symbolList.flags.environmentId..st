gci api
gciExecuteString: source sourceClass: sourceClassOopType contextObject: contextObjectOopType symbolList: symbolListOopType flags: flags environmentId: environmentId
	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			| result |
			result := lib
				apiGciSetSessionId: gciSessionNumber;
				apiGciExecuteStrFromContextDbg_: source
					a: source size
					a: sourceClassOopType
					a: contextObjectOopType
					a: symbolListOopType
					a: flags
					a: environmentId.
			^ result asGsOopType ]