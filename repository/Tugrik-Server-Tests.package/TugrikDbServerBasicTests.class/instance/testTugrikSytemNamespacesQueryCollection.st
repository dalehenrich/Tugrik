tests
testTugrikSytemNamespacesQueryCollection
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
    queryOperation: 10
    opCode: 2004
    collectionBytes:
      #[116 101 115 116 46 115 121 115 116 101 109 46 110 97 109 101 115 112 97 99 101 115]
    offset: 0
    chunkSize: 0
    dataBytes: '{''$query'':{}}'.
  result := STON fromString: resultString.
  self halt