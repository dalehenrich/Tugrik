initialize
login: loginFlags haltOnErrNum: haltOnErrNum gciErr: aGciTs32xErrSType
	| result |
	result := self library
		apiGciTsLogin: sessionDescription stoneNRS
		a: sessionDescription osUserIdForGciTs
		a: sessionDescription osPassword
		a: sessionDescription osPassword osPasswordIsEncrypted
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