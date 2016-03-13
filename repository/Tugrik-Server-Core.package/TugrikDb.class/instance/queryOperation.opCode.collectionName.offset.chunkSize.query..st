query processing
queryOperation: id opCode: opCode collectionName: collectionName offset: mongoQueryOffset chunkSize: mongoQueryChunkSize query: queryDict
  | result |
  result := self selectCollectionNamed: collectionName queryDict: queryDict.
  ^ STON toString: result