operation API
performOperationOnServer: selector withArgs: args
	session := GsGciSession login: self sessionDescription.
	[ 
	| dbOopType resultString |
	dbOopType := session executeString: 'TugrikDbServer'.
	resultString := session send: selector to: dbOopType withArgs: args.
	^ STON fromString: resultString ]
		ensure: [ 
			session logout.
			session := nil ]