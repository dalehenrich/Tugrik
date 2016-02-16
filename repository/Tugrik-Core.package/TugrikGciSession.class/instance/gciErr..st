gci api - exception handling
gciErr: aGciTs32xErrSType
	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			^ lib
				apiGciSetSessionId: gciSessionNumber;
				apiGciErr: aGciTs32xErrSType ]