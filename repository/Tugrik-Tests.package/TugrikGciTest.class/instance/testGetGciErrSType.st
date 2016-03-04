tests
testGetGciErrSType
	"execute without error"

	| session gciErrSType |
	session := GsGciSession login: GsGciSessionDescription example.
	[ 
	gciErrSType := session getGciErrSType.
	self assert: gciErrSType isNil ]
		ensure: [ session logout ]