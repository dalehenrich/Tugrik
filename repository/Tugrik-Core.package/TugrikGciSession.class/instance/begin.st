gci api
begin
	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			^ lib
				apiGciSetSessionId: gciSessionNumber;
				apiGciBegin ]