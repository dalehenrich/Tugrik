gci api
gciNewWideString: aWideString
	| byteArray |
	byteArray := self bytesForWideString: aWideString.
	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			| result |
			result := lib
				apiGciSetSessionId: gciSessionNumber;
				apiGciNewByteObj: GsGciOopType oopClassQuadByteString a: byteArray a: byteArray size.
			^ result gciResultToGsOopType: self ]