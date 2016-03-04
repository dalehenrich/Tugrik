gci api
gciI64ToOop: anInteger
	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			| result |
			result := lib
				apiGciSetSessionId: gciSessionNumber;
				apiGciI64ToOop: anInteger.
			^ result gciResultToGsOopType: self ]