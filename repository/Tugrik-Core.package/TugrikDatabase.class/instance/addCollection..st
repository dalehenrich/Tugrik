operations
addCollection: aString 
	| command reply |
	command := Dictionary new.
	command at: 'create' put: aString.
	reply := self command: command.
	reply at: 'ok' ifAbsent: [self halt].
	^MongoCollection database: self name: aString