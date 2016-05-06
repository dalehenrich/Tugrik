query processing
queryOperation: id opCode: opCode collectionName: collectionName offset: mongoQueryOffset chunkSize: mongoQueryChunkSize query: queryDict
  ^ self
    queryOperation: id
    opCode: opCode
    collectionName: collectionName
    offset: mongoQueryOffset
    chunkSize: mongoQueryChunkSize
    query: queryDict
    fields: Dictionary new