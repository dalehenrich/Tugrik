accessing
collectionNamed: collectionName
  | dbColl |
  collectionName = 'Basic Examples'
    ifFalse: [ self error: 'collection ' , collectionName , ' does not exist' ].
  self collections at: collectionName ifPresent: [ :coll | ^ coll ].
  dbColl := self collections
    at: collectionName
    put: (TugrikExamplesDbCollection named: collectionName).
  dbColl createCollection.
  ^ dbColl