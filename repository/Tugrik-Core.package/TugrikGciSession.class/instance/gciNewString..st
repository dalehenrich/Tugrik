gci api
gciNewString: aByteString
	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			| result |
			result := lib
				apiGciSetSessionId: gciSessionNumber;
				apiGciNewString: aByteString.
			^ result gciResultToGsOopType: self ]