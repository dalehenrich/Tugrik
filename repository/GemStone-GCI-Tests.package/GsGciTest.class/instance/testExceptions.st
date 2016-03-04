tests
testExceptions
	| session |
	session := GsGciSession login: GsGciSessionDescription example.
	[ 
	| result |
	result := session executeString: '1'.
	self assert: result = 1.
	self should: [ session executeString: '1 foo' ] raise: GsGciError ]
		ensure: [ session logout ]