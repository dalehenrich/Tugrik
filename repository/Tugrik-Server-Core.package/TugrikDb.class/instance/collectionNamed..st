accessing
collectionNamed: collectionName
  | dbColl |
  self collections at: collectionName ifPresent: [ :coll | ^ coll ].
  dbColl := self collections
    at: collectionName
    put: (self dbCollectionClass named: collectionName collectionDb: self).
  dbColl createCollection.
  ^ dbColl