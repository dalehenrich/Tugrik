tests
testGciErr
	"execute without error"

	| session gciErrSType |
	session := TugrikGciSession login: GciSessionDescription example.
	[ 
	gciErrSType := session gciError.
	self assert: gciErrSType isNil ]
		ensure: [ session logout ]