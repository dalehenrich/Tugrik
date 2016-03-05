query processing
countCollectionNamed: collectionName
  ^ Dictionary new
    at: 'ok' put: 0;
    at: 'n' put: (self collections at: collectionName) size;
    yourself