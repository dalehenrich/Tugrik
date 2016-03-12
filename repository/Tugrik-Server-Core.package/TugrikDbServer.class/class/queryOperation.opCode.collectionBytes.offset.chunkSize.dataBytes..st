operations
queryOperation: id opCode: opCode collectionBytes: collectionBytes offset: mongoQueryOffset chunkSize: mongoQueryChunkSize dataBytes: dataBytes
  | collectionString data tokens dbName db result collectionName operationType |
  collectionString := collectionBytes decodeFromUTF8.
  data := STON fromString: dataBytes.
  tokens := collectionString findTokens: '.'.
  dbName := tokens at: 1.
  operationType := tokens at: 2.
  System abort.
  db := self root
    at: dbName
    ifAbsent: [ self root at: dbName put: (TugrikDb named: dbName) ].
  operationType = '$cmd'
    ifTrue: [ 
      result := db
        queryOperation: id
        opCode: opCode
        offset: mongoQueryOffset
        chunkSize: mongoQueryChunkSize
        query: (data at: '$query') ]
    ifFalse: [ 
      collectionName := operationType.
      result := db
        queryOperation: id
        opCode: opCode
        collectionName: collectionName
        offset: mongoQueryOffset
        chunkSize: mongoQueryChunkSize
        query: data ].
  System commit.
  ^ result