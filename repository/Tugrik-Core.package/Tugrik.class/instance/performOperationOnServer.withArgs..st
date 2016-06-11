operation API
performOperationOnServer: selector withArgs: args
	| client |
	session
		ifNil: [ client := self todeClient.
			session := client session ].
	[ | dbOopType resultString |
	dbOopType := session executeString: 'TugrikDbServer'.
	resultString := session send: selector to: dbOopType withArgs: args.
	^ STON fromString: resultString ]
		ensure: [ false
				ifTrue: [ session logout.
					session := nil ] ]