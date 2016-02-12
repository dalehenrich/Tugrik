private-communicating
update: origDictionary with: newDictionary collection: aString
	(UpdateOperation
		collection: aString
		id: self nextRequestID
		session: session
		originalObject: origDictionary 
		newObject: newDictionary)
			write