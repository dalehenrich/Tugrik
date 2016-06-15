operation API
performOperationOnServer: selector withArgs: args
	| client |
	session
		ifNil: [ client := self todeClient.
			session := client session ].
	[ | resultString |
	resultString := session
		sendFetchBytes: selector
		to: self tugrikDbServerOopType
		withArgs: args.
	^ STON fromString: resultString ]
		ensure: [ false
				ifTrue: [ session logout.
					session := nil ] ]