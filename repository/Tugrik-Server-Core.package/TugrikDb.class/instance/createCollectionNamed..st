query processing
createCollectionNamed: collectionName
  | dbColl |
  dbColl := self collections
    at: collectionName
    put: (TugrikDbCollection named: collectionName).
  ^ dbColl createCollection