collection processing
insertOperation: id collectionName: collectionName data: dataArray
  (self collectionNamed: collectionName) insertOperation: dataArray.
  ^ self class stonOkayDict