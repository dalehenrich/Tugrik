gci api
gciNewSymbol: aByteSymbol
	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			| result |
			result := lib
				apiGciSetSessionId: gciSessionNumber;
				apiGciNewSymbol: aByteSymbol.
			^ result gciResultToGsOopType: self ]