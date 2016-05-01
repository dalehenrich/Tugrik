operation API
performOperationOnServer: selector withArgs: args
| client |
	client := self  todeClient.
	session := client session.
	[ 
	| dbOopType resultString |
	dbOopType := session executeString: 'TugrikDbServer'.
	resultString := session send: selector to: dbOopType withArgs: args.
	^ STON fromString: resultString ]
		ensure: [ 
			session logout.
			session := nil ]