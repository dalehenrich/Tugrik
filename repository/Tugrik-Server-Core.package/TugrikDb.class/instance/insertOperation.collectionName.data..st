collection processing
insertOperation: id collectionName: collectionName data: dataArray
  | result |
  result := (self collections at: collectionName) insertOperation: dataArray.
  ^ STON toString: result