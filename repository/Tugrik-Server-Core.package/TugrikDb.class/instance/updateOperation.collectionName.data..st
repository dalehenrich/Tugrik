collection processing
updateOperation: id collectionName: collectionName data: dataArray
  | result |
  result := (self collections at: collectionName) updateOperation: dataArray.
  ^ STON toString: result