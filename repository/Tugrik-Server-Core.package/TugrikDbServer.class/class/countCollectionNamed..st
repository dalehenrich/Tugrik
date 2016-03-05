query processing
countCollectionNamed: collectionName
  ^ Dictionary new
    at: 'ok' put: (self root at: collectionName) size;
    yourself