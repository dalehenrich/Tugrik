operations
addCollection: aString capped: capped size: sizeOrNil max: maxOrNil
	| command reply |
	command := Dictionary new.
	command at: 'create' put: aString.
	reply := self command: command.
	reply at: 'ok' ifAbsent: [self halt].
	(reply at: 'ok' ifAbsent: [self halt]) = 1.0 ifFalse: [
		"Tolerate error 48: collection already exists"
		((reply at: 'code') = 48) 
			ifTrue: [ 
				(MongoCollectionAlreadyExists new
					collectionName: aString) signal  ]
			ifFalse: [ self error: 'Command failed' ]].
	^MongoCollection database: self name: aString