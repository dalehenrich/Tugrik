collection processing
insertOperation: id collectionName: collectionName data: dataArray
  | result |
  result := (self collectionNamed: collectionName) insertOperation: dataArray.
  ^ STON toString: result