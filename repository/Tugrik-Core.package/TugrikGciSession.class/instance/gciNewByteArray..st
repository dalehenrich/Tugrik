gci api
gciNewByteArray: aByteArray
	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			| result |
			result := lib
				apiGciSetSessionId: gciSessionNumber;
				apiGciNewByteObj: GsOopType oopClassByteArray a: aByteArray a: aByteArray size.
			^ result gciResultToGsOopType: self ]