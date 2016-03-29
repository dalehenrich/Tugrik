gci api - exception handling
gciErr: aGsGci32xErrSType
	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			^ lib
				apiGciSetSessionId: gciSessionNumber;
				apiGciErr: aGsGci32xErrSType ]