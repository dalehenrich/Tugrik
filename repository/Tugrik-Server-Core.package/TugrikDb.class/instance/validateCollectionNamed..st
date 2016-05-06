command processing
validateCollectionNamed: collectionName
  | dbColl |
  dbColl := self collections
    at: collectionName
    ifAbsent: [ 
      ^ Dictionary new
        at: 'ok' put: -1;
        yourself ].
  ^ Dictionary new
    at: 'ok' put: 1.0;
    yourself