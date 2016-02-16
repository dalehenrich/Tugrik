gci api - exception handling
gciError
	| aGciTs32xErrSType |
	aGciTs32xErrSType := Gci32xErrSType new.
	(self gciErr: aGciTs32xErrSType)
		ifFalse: [ 
			"no error present"
			^ nil ].
	^aGciTs32xErrSType