initialize-release
logout
	super logout.
	self gciLibrary apiGciCallInProgress
		ifTrue: [ 
			"call in progress, so issue a hardbreak to terminate processing"
			self inform: 'Call in progress .. issuing hardbreak before attempting logout'.
			self gciLibrary
				apiGciSetSessionId: gciSessionNumber;
				apiGciHardBreak ].
	self gciLibrary
		critical: [ :lib | 
			lib
				apiGciSetSessionId: gciSessionNumber;
				apiGciLogout ]