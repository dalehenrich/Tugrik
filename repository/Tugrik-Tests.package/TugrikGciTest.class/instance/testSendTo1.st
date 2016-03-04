tests
testSendTo1
	| session result |
	session := TugrikGciSession login: GciSessionDescription example.
	[ result := session send: #size to: 'abc' ]
		ensure: [ session logout ].
	self assert: result = 3