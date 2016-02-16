gci api
callInProgress
	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			^ lib
				apiGciSetSessionId: gciSessionNumber;
				apiGciCallInProgress ]