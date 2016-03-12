tests
testTugrikCursorQueryDropCollection
  | resultString result |
  resultString := TugrikDbServer
    queryOperation: 10
    opCode: 0
    collectionBytes: #[116 101 115 116 46 36 99 109 100]
    offset: 0
    chunkSize: 1
    dataBytes: '{''$query'':{''create'':''testCollection''}}'.
  result := STON fromString: resultString.
  self assert: (result includesKey: 'ok').
  resultString := TugrikDbServer
    queryOperation: 10
    opCode: 2004
    collectionBytes: #[116 101 115 116 46 36 99 109 100]
    offset: 0
    chunkSize: 1
    dataBytes: '{''$query'':{''drop'':''testCollection''}}'.
  result := STON fromString: resultString.
  self assert: (result includesKey: 'ok')