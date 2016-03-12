query processing
countCollectionNamed: collectionName queryDict: queryDict
  | query fields |
  query := queryDict at: 'query'.
  query isEmpty
    ifTrue: [ ^ (self collections at: collectionName) count ].
  fields := queryDict at: 'fields'.
  ^ (self collections at: collectionName) count: query fields: fields