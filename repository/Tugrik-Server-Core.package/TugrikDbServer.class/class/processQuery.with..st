query processing
processQuery: query with: collectionString
  query
    keysAndValuesDo: [ :key :value | 
      key = 'create'
        ifTrue: [ ^ self createCollectionNamed: value ].
      self error: 'unknown query operation' ]