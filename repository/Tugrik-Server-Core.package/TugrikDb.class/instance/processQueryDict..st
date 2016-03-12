query processing
processQueryDict: queryDict
  queryDict
    at: 'create'
    ifPresent: [ :collectionName | ^ self createCollectionNamed: collectionName ].
  queryDict
    at: 'drop'
    ifPresent: [ :collectionName | ^ self dropCollectionNamed: collectionName ].
  queryDict
    at: 'count'
    ifPresent: [ :collectionName | ^ self countCollectionNamed: collectionName queryDict: queryDict ].
  self error: 'unknown query'