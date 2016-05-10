accessing
collectionNamed: collectionName
  | dbColl |
  self collections at: collectionName ifPresent: [ :coll | ^ coll ].
  dbColl := self collections
    at: collectionName
    put: (TugrikDbCollection named: collectionName).
  dbColl createCollection.
  ^ dbColl