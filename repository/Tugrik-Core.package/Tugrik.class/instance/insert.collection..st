private-communicating
insert: aCollection collection: aString
	(InsertOperation
		collection: aString
		id: self nextRequestID
		session: session
		objects: aCollection)
			write