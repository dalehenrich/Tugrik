query processing
queryCommand: id opCode: opCode offset: mongoQueryOffset chunkSize: mongoQueryChunkSize query: queryDict server: aDbServer
  | result |
  result := {}.
  self processQueryCommand: queryDict result: result server: aDbServer.
  ^ self serialize: result