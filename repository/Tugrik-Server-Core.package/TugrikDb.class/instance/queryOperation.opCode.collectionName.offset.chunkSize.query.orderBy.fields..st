query processing
queryOperation: id opCode: opCode collectionName: collectionName offset: mongoQueryOffset chunkSize: mongoQueryChunkSize query: queryDict orderBy: orderByDict fields: fieldsDictionary
  | result |
  result := self selectCollectionNamed: collectionName queryDict: queryDict.
  mongoQueryOffset > 0
    ifTrue: [ result := result copyFrom: mongoQueryOffset + 1 to: result size ].
  fieldsDictionary isEmpty
    ifFalse: [  ].
  orderByDict isEmpty
    ifFalse: [ 
      orderByDict
        keysAndValuesDo: [ :key :order | result := result sort: [ :a :b | (a perform: key) <= (b perform: key) ] ] ].
  ^ STON toString: result