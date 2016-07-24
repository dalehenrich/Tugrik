accessing
collections
  | dbColl |
  super collections.
  dbColl := collections
    at: self collectionName
    put:
      (TugrikExamplesDbCollection named: self collectionName collectionDb: self).
  dbColl createCollection.
  ^ collections