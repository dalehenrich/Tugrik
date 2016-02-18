tests
testExceptions
	| session |
	true ifTrue:[ ^self ].
	session := TugrikGciSession login: GciSessionDescription example.
	[ 
	| result |
	result := session executeString: '1'.
	self assert: result = 1.
	self should: [ session executeString: '1 foo' ] raise: TugrikGsError ]
		ensure: [ session logout ]