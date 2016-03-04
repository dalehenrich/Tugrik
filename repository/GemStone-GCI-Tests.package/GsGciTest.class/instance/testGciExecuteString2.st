tests
testGciExecuteString2
	| session resultOopType |
	session := GsGciSession login: GsGciSessionDescription example.
	[ resultOopType := session gciExecuteString: 'nil' ]
		ensure: [ session logout ].
	self assert: resultOopType = GsGciOopType oopNil