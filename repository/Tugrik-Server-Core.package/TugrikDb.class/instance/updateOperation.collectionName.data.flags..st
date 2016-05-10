collection processing
updateOperation: id collectionName: collectionName data: dataArray flags: flags
  | result |
  result := (self collectionNamed: collectionName)
    updateOperation: dataArray
    flags: flags.
  ^ STON toString: result