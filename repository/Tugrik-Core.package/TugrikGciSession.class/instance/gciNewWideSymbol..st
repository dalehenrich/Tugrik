gci api
gciNewWideSymbol: aWideSymbol
	| byteArray |
	byteArray := self bytesForWideString: aWideSymbol.
	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			| result |
			result := lib
				apiGciSetSessionId: gciSessionNumber;
				apiGciNewByteObj: GsOopType oopClassQuadByteString a: byteArray a: byteArray size.
			^ result gciResultToGsOopType: self ]