operation API
update: origDictionary with: newDictionary collection: aString flags: aFlag
	(UpdateOperation
		collection: aString
		id: self nextRequestID
		stream: stream
		originalObject: origDictionary 
		newObject: newDictionary)
			flags: aFlag;
			performTugrikOperationOn: self