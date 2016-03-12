query processing
queryOperation: id opCode: opCode offset: mongoQueryOffset chunkSize: mongoQueryChunkSize query: queryDict
  | result |
  result := self processQueryDict: queryDict.
  ^ STON toString: result