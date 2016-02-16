gci api
commit
	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			^ lib
				apiGciSetSessionId: gciSessionNumber;
				apiGciCommit ]