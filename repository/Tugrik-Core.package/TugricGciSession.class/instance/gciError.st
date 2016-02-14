gci api - signal handling
gciError
	| aGciTs32xErrSType |
	aGciTs32xErrSType := GciTs32xErrSType new.
	(self gciErr: aGciTs32xErrSType)
		ifFalse: [ 
			"no error present"
			^ false ].
	self halt