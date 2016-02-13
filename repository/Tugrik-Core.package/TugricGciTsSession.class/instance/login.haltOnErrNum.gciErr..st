initialize-release
login: loginFlags haltOnErrNum: haltOnErrNum gciErr: aGciTs32xErrSType
	| result |
	result := self gciLibrary
		apiGciTsLogin: sessionDescription stoneNRS
		a: (false ifTrue: [0] ifFalse:[sessionDescription osUserId])
		a: (false ifTrue: [0] ifFalse:[sessionDescription osPassword])
		a: (sessionDescription osPasswordIsEncrypted ifTrue: [1] ifFalse:[0])
		a: (false ifTrue: [0] ifFalse:[sessionDescription gemNRS])
		a: (false ifTrue: [0] ifFalse:[sessionDescription userId])
		a: (false ifTrue: [0] ifFalse:[sessionDescription password])
		a: (true ifTrue: [0] ifFalse:[loginFlags])
		a: (true ifTrue: [0] ifFalse:[haltOnErrNum])
		a: (true ifTrue: [ExternalAddress new beNull asByteArrayPointer] ifFalse:[aGciTs32xErrSType]).
	result = 0
		ifTrue: [ 
			"NULL result, check out the gciError"
			self gciError: aGciTs32xErrSType ].
	gciSession := result