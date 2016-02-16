tests
testGciExceptions
	| session |
	session := TugrikGciSession login: GciSessionDescription example.
	[ 
	| resultObj |
	resultObj := (session gciExecuteString: '1') asLocalObjectFor: session.
	self assert: resultObj = 1 ]
		ensure: [ session logout ]