collection processing
deleteOperation: id collectionName: collectionName data: dataArray
  | result |
  result := (self collections at: collectionName) deleteOperation: dataArray.
  ^ STON toString: result