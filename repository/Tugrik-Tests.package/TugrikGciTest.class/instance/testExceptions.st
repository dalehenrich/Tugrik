tests
testExceptions
	| session |
	session := TugrikGciSession login: GsGciSessionDescription example.
	[ 
	| result |
	result := session executeString: '1'.
	self assert: result = 1.
	self should: [ session executeString: '1 foo' ] raise: TugrikGsError ]
		ensure: [ session logout ]