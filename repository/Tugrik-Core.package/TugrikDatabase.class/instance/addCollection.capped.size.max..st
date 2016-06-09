operations
addCollection: aString capped: aCapped size: aSize max: aMax
	| command |
	command := Dictionary new.
	command at: 'create' put: aString.
	aCapped
		ifTrue: [ command at: 'capped' put: true.
			aSize ifNotNil: [ command at: 'size' put: aSize ].
			aMax ifNotNil: [ command at: 'max' put: aMax ] ].
	[ self command: command ]
		on: MongoCommandError
		do: [ :error | 
			error isCollectionAlreadyExists
				ifTrue: [ (MongoCollectionAlreadyExists new collectionName: aString) signal ]
				ifFalse: [ error signal ] ].
	"Tolerate error 48: collection already exists"
	^ MongoCollection database: self name: aString