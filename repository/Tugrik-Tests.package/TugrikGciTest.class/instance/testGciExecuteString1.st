tests
testGciExecuteString1
	| session resultOopType |
	session := TugricGciSession login: GciSessionDescription example.
	[ resultOopType := session executeString: 'String' ]
		ensure: [ session logout ].
	self assert: resultOopType = GsOopType oopClassString