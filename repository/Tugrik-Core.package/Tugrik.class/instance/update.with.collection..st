private-communicating
update: origDictionary with: newDictionary collection: aString
	(UpdateOperation
		collection: aString
		id: self nextRequestID
		stream: stream
		originalObject: origDictionary 
		newObject: newDictionary)
			write