tests
testGetGciErrSType
	"execute without error"

	| session gciErrSType |
	session := TugrikGciSession login: GciSessionDescription example.
	[ 
	gciErrSType := session getGciErrSType.
	self assert: gciErrSType isNil ]
		ensure: [ session logout ]