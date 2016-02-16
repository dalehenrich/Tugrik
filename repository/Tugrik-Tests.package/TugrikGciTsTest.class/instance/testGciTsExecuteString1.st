tests
testGciTsExecuteString1
	| session resultOopType |
	session := TugrikGciTsSession login: GciSessionDescription example.
	[ resultOopType := session gciExecuteString: 'String' ]
		ensure: [ session logout ].
	self assert: resultOopType = GsOopType oopClassString