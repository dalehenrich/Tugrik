command processing
dropCollectionNamed: collectionName
  | dbColl |
  dbColl := self collections
    at: collectionName
    ifAbsent: [ 
      ^ Dictionary new
        at: 'ok' put: 1.0;
        yourself ].
  dbColl removeIndexes.
  self collections removeKey: collectionName.
  ^ Dictionary new
    at: 'ok' put: 1.0;
    yourself