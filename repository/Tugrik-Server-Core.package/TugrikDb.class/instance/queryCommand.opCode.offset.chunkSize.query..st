query processing
queryCommand: id opCode: opCode offset: mongoQueryOffset chunkSize: mongoQueryChunkSize query: queryDict
  | result |
  result := {}.
  self processQueryCommand: queryDict result: result.
  ^ STON toString: result