tests
testGciExecuteString1
	| session resultOopType |
	session := GsGciSession login: GsGciSessionDescription example.
	[ resultOopType := session gciExecuteString: 'String' ]
		ensure: [ session logout ].
	self assert: resultOopType = GsGciOopType oopClassString