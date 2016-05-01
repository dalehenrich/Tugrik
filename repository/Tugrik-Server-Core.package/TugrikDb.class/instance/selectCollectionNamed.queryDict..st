query processing
selectCollectionNamed: collectionName queryDict: queryDict
  queryDict isEmpty
    ifTrue: [ ^ (self collections at: collectionName) collection asArray ].
  ^ (self collections at: collectionName) selectCollection: queryDict