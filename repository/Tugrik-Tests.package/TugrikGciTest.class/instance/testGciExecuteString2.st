tests
testGciExecuteString2
	| session resultOopType |
	session := TugrikGciSession login: GsGciSessionDescription example.
	[ resultOopType := session gciExecuteString: 'nil' ]
		ensure: [ session logout ].
	self assert: resultOopType = GsOopType oopNil