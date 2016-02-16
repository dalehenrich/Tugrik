tests
testGciExecuteString1
	| session resultOopType |
	session := TugrikGciSession login: GciSessionDescription example.
	[ resultOopType := session gciExecuteString: 'String' ]
		ensure: [ session logout ].
	self assert: resultOopType = GsOopType oopClassString