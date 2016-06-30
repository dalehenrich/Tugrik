tests
testTugrikCursorQueryCountCollection
  "inputs gleaned from api call on client"

  | resultString result |
  resultString := TugrikDbServer
    queryOperation: 10
    opCode: 0
    collectionBytes: #[116 101 115 116 46 36 99 109 100]
    offset: 0
    chunkSize: 1
    dataBytes: '{''$query'':{''create'':''testCollection''}}'.
  result := STON fromString: resultString.
  self assert: (result first includesKey: 'ok').
  resultString := TugrikDbServer
    queryOperation: 18
    opCode: 0
    collectionBytes: #[116 101 115 116 46 36 99 109 100]
    offset: 0
    chunkSize: 1
    dataBytes:
      '{''$query'':{''count'':''testCollection'',''fields'':{},''query'':{}}}'.
  result := STON fromString: resultString.
  self assert: (result first includesKey: 'ok').
  self assert: (result first at: 'n') = 0