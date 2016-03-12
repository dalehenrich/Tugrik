query processing
dropCollectionNamed: collectionName
  | dbColl |
  dbColl := self collections at: collectionName.
  dbColl removeIndexes.
  self collections removeKey: collectionName.
  ^ Dictionary new
    at: 'ok' put: 0;
    yourself