initialize-release
login: aSessionDescription
	| loginFlags haltOnErrNum aGciTs32xErrSType |
	super login: aSessionDescription.
	loginFlags := 0.
	haltOnErrNum := 0.
	aGciTs32xErrSType := Gci32xErrSType new.
	self login: loginFlags haltOnErrNum: haltOnErrNum gciErr: aGciTs32xErrSType