command processing
createCollectionNamed: collectionName
  | dbColl |
  (self collections includesKey: collectionName)
    ifTrue: [ 
      ^ Dictionary new
        at: 'ok' put: -1;
        at: 'code' put: 48;
        yourself ].
  dbColl := self collections
    at: collectionName
    put: (self dbCollectionClass named: collectionName collectionDb: self).
  dbColl createCollection.
  ^ Dictionary new
    at: 'ok' put: 1.0;
    yourself