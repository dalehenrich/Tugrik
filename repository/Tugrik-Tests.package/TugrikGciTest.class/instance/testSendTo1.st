tests
testSendTo1
	| session result |
	session := TugrikGciSession login: GsGciSessionDescription example.
	[ result := session send: #size to: 'abc' ]
		ensure: [ session logout ].
	self assert: result = 3