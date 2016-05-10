query processing
selectCollectionNamed: collectionName queryDict: queryDict
  queryDict isEmpty
    ifTrue: [ ^ (self collectionNamed: collectionName) collection asArray ].
  ^ (self collectionNamed: collectionName) selectCollection: queryDict