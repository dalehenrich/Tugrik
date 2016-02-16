initialize-release
login: aSessionDescription
	| result |
	super login: aSessionDescription.
	result := self gciLibrary
		apiGciSetNet: sessionDescription stoneNRS
			a: sessionDescription osUserId
			a: sessionDescription osPassword
			a: sessionDescription gemNRS;
		apiGciLogin: sessionDescription userId a: sessionDescription password.
	result
		ifTrue: [ gciSessionNumber := self gciLibrary apiGciGetSessionId ]
		ifFalse: [ self halt: 'handle failed login' ]