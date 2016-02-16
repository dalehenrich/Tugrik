testing
checkSession
	self isSessionValid
		ifFalse: [ ^ self error: 'Session no longer logged in.' ]