private-communicating
delete: aDictionary collection: aString
	(DeleteOperation
		collection: aString 
		id: self nextRequestID 
		session: session
		query: aDictionary)
			write