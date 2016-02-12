operations
command: aDictionary database: aDatabase
	| query |
	query := MongoQuery new
		database: aDatabase;
		collection: (MongoMetaCollection name: '$cmd');
		where: aDictionary;
		yourself.
	^self queryOne: query.