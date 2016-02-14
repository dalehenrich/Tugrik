tests
testGciTsExecuteString1
	| session resultOopType |
	session := TugricGciTsSession login: GciSessionDescription example.
	[ resultOopType := session executeString: 'String' ]
		ensure: [ session logout ].
	self assert: resultOopType = GsOopType oopClassString