tests
testTugrikSizeForQueryCollection
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
    insertOperation: 56
    collectionBytes:
      #[116 101 115 116 46 116 101 115 116 67 111 108 108 101 99 116 105 111 110]
    dataBytes: '[{''key'':''value''}]'.
  result := STON fromString: resultString.
  self assert: (result includesKey: 'ok').
  resultString := TugrikDbServer
    queryOperation: 10
    opCode: 2004
    collectionBytes: #[116 101 115 116 46 36 99 109 100]
    offset: 0
    chunkSize: 1
    dataBytes:
      '{''$query'':{''count'':''testCollection'',''fields'':{},''query'':{''key'':''value''}}}'.
  result := STON fromString: resultString.
  self assert: (result first includesKey: 'ok').
  self assert: (result first at: 'n') = 1