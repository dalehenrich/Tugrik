operations
queryOperation: id collectionBytes: collectionBytes offset: mongoQueryOffset chunkSize: mongoQueryChunkSize dataBytes: dataBytes
  | collectionString data |
  collectionString := collectionBytes decodeFromUTF8.
  data := STON fromString: dataBytes.
  data
    keysAndValuesDo: [ :key :value | 
      key = '$query'
        ifTrue: [ 
          self processQuery: value with: collectionString.
          ^ 'ok' ].
      self error: 'Unknown operation' ]