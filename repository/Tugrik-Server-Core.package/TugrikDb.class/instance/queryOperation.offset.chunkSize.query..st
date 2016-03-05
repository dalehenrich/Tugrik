command processing
queryOperation: id offset: mongoQueryOffset chunkSize: mongoQueryChunkSize query: queryDict
  | result |
  result := {}.
  queryDict
    keysAndValuesDo: [ :key :value | 
      key = '$query'
        ifTrue: [ self processQuery: value result: result ]
        ifFalse: [ self error: 'Unknown operation' ] ].
  ^ STON toString: result