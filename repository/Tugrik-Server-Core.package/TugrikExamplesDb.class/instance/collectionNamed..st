accessing
collectionNamed: collectionName
  collectionName = self collectionName
    ifFalse: [ self error: 'collection ' , collectionName , ' does not exist' ].
  ^ super collectionNamed: collectionName