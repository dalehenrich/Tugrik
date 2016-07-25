accessing
collections
  | dbColl |
  super collections.
  dbColl := collections
    at: self collectionName
    put: (self dbCollectionClass named: self collectionName collectionDb: self).
  dbColl createCollection.
  ^ collections