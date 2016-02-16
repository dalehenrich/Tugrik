tests
testGciTsExecuteString1
	| session resultOopType |
	session := TugrikGciTsSession login: GciSessionDescription example.
	[ resultOopType := session executeString: 'String' ]
		ensure: [ session logout ].
	self assert: resultOopType = GsOopType oopClassString