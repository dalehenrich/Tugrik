private
createCollections
  | dbColl |
  super createCollections.
  dbColl := collections
    at: self collectionName
    put: (self dbCollectionClass named: self collectionName collectionDb: self).
  dbColl createCollection