query processing
countCollectionNamed: collectionName queryDict: queryDict
  | query |
  query := queryDict at: 'query'.
  query isEmpty
    ifFalse: [ 
      | fields |
      fields := queryDict at: 'fields'.
      self halt ].
  ^ (self collections at: collectionName) count