tests
testGciTsExecuteString1
	| session resultOopType |
	session := GsGciTsSession login: GsGciSessionDescription example.
	[ resultOopType := session gciExecuteString: 'String' ]
		ensure: [ session logout ].
	self assert: resultOopType = GsOopType oopClassString