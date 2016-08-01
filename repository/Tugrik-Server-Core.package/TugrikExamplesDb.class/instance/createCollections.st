private
createCollections
  | dbColl |
  super createCollections.
  dbColl := collections
    at: self collectionName
    put:
      (TugrikExamplesDbCollection named: self collectionName collectionDb: self).
  dbColl createCollection