query processing
queryOperation: id opCode: opCode collectionName: collectionName offset: mongoQueryOffset chunkSize: mongoQueryChunkSize query: queryDict fields: fieldsDictionary
  | result |
  result := self selectCollectionNamed: collectionName queryDict: queryDict.
  mongoQueryOffset > 0
    ifTrue: [ result := result copyFrom: mongoQueryOffset + 1 to: result size ].
  fieldsDictionary isEmpty
    ifFalse: [  ].
  ^ STON toString: result