tests
testTugrikCursorQueryCreateCollection
  TugrikDbServer
    queryOperation: 10
    collectionBytes: #[116 101 115 116 46 36 99 109 100]
    offset: 0
    chunkSize: 1
    dataBytes: '{''$query'':{''create'':''testCollection''}}'.
  self assert: (TugrikDbServer root at: 'testCollection') size = 0