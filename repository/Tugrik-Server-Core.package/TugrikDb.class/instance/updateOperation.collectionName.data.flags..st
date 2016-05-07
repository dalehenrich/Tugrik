collection processing
updateOperation: id collectionName: collectionName data: dataArray flags: flags
  | result |
  result := (self collections at: collectionName)
    updateOperation: dataArray
    flags: flags.
  ^ STON toString: result