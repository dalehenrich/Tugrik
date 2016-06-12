query processing
queryOperation: id opCode: opCode collectionName: collectionName offset: mongoQueryOffset chunkSize: mongoQueryChunkSize query: queryDict orderBy: orderByDict fields: fieldsDictionary
  | result |
  result := self selectCollectionNamed: collectionName queryDict: queryDict.
  mongoQueryOffset > 0
    ifTrue: [ result := result copyFrom: mongoQueryOffset + 1 to: result size ].
  fieldsDictionary isEmpty
    ifFalse: [ result := self filterResult: result fields: fieldsDictionary ].
  orderByDict isEmpty
    ifFalse: [ 
      orderByDict
        keysAndValuesDo: [ :key :order | 
          | selector |
          selector := key asSymbol.
          result := result
            sort: [ :a :b | (a dynamicInstVarAt: selector) <= (b dynamicInstVarAt: selector) ] ] ].
  ^ STON toString: result