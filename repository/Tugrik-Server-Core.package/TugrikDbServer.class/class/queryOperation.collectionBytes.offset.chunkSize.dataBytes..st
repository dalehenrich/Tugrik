operations
queryOperation: id collectionBytes: collectionBytes offset: mongoQueryOffset chunkSize: mongoQueryChunkSize dataBytes: dataBytes
  | collectionString data result |
  collectionString := collectionBytes decodeFromUTF8.
  data := STON fromString: dataBytes.
  result := {}.
  data
    keysAndValuesDo: [ :key :value | 
      key = '$query'
        ifTrue: [ self processQuery: value with: collectionString result: result ]
        ifFalse: [ self error: 'Unknown operation' ] ].
  ^ STON toString: result