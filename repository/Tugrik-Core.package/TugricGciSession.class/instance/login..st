initialize
login: aSessionDescription
	| loginFlags haltOnErrNum aGciTs32xErrSType |
	self sessionDescription: aSessionDescription.
	loginFlags := 0.
	haltOnErrNum := 0.
	aGciTs32xErrSType := GciTs32xErrSType new.
	self login: loginFlags haltOnErrNum: haltOnErrNum gciErr: aGciTs32xErrSType