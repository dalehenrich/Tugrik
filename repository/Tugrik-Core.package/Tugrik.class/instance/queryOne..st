operations
queryOne: aMongoQuery
	aMongoQuery doBlock: [:each | ^each].
	aMongoQuery chunkSize: 1.
	(TugrikCursor new
		root: self;
		query: aMongoQuery;
		execute).
	^nil