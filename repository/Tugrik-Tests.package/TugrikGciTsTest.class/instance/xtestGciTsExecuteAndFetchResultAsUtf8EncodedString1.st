tests
xtestGciTsExecuteAndFetchResultAsUtf8EncodedString1
	| session utf8EncodedResultString |
	utf8EncodedResultString := String new: 10.
	session := TugrikGciTsSession login: GciSessionDescription example.
	[ 
	session
		executeAndFetchUtf8EncodedResultInto: utf8EncodedResultString
		sourceString: 'GsFile gciLogServer:''Hello Sailor''. System logout. 1 asString' ]
		ensure: [ session logout ].
	self assert: utf8EncodedResultString = '1'