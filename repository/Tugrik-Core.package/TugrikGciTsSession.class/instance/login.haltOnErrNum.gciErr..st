initialize-release
login: loginFlags haltOnErrNum: haltOnErrNum gciErr: aGciTs32xErrSType
	| result |
	result := self gciLibrary
		apiGciTsLogin: sessionDescription stoneNRS
		a: sessionDescription osUserId
		a: sessionDescription osPassword
		a: (sessionDescription osPasswordIsEncrypted ifTrue: [1] ifFalse:[0])
		a: sessionDescription gemNRS
		a: sessionDescription userId
		a: sessionDescription password
		a: loginFlags
		a: haltOnErrNum
		a: aGciTs32xErrSType.
	result = 0
		ifTrue: [ 
			"NULL result, check out the gciError"
			self gciError: aGciTs32xErrSType ].
	gciSession := result