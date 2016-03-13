query processing
selectCollectionNamed: collectionName queryDict: queryDict
  queryDict isEmpty
    ifTrue: [ ^ (self collections at: collectionName) collection aArray ].
  ^ (self collections at: collectionName) selectCollection: queryDict