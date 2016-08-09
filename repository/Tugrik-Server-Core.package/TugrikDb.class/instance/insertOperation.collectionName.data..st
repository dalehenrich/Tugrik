collection processing
insertOperation: id collectionName: collectionName data: queryArrayOrDict
  (self collectionNamed: collectionName) insertOperation: queryArrayOrDict.
  ^ self class stonOkayDict