tests
testGciTsExecuteAndFetchResultAsUtf8EncodedString1
	| session utf8EncodedResultString |
	utf8EncodedResultString := String new: 10.
	session := TugricGciTsSession login: GciSessionDescription example.
	[ session executeAndFetchUtf8EncodedResultInto: utf8EncodedResultString sourceString: '1 asString' ]
		ensure: [ session logout ].
	self assert: utf8EncodedResultString = '1'