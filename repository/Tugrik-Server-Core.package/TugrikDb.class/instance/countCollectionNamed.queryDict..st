query processing
countCollectionNamed: collectionName queryDict: queryDict
  | query fields |
  query := queryDict at: 'query'.
  query isEmpty
    ifTrue: [ ^ (self collectionNamed: collectionName) count ].
  fields := queryDict at: 'fields'.
  ^ (self collectionNamed: collectionName) count: query fields: fields