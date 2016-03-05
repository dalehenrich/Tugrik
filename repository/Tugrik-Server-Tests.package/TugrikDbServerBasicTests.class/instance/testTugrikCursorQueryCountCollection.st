tests
testTugrikCursorQueryCountCollection
  | resultString resultArray |
  resultString := TugrikDbServer
    queryOperation: 10
    collectionBytes: #[116 101 115 116 46 36 99 109 100]
    offset: 0
    chunkSize: 1
    dataBytes: '{''$query'':{''create'':''testCollection''}}'.
  resultArray := STON fromString: resultString.
  self assert: (resultArray first includesKey: 'ok').
  resultString := TugrikDbServer
    queryOperation: 18
    collectionBytes: #[116 101 115 116 46 36 99 109 100]
    offset: 0
    chunkSize: 1
    dataBytes:
      '{''$query'':{''count'':''testCollection'',''fields'':{},''query'':{}}}'.
  resultArray := STON fromString: resultString.
  self halt