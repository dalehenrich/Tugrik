gci api
gciI64ToOop: anInteger
	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			^ lib
				apiGciSetSessionId: gciSessionNumber;
				apiGciI64ToOop: anInteger ]