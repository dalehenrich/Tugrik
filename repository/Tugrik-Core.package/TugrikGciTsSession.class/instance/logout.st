initialize-release
logout
	| aGciTs32xErrSType |
	super logout.
	aGciTs32xErrSType := Gci32xErrSType new.
	(self gciLibrary apiGciTsLogout: self gciSession a: aGciTs32xErrSType)
		ifFalse: [ self gciError: aGciTs32xErrSType ]