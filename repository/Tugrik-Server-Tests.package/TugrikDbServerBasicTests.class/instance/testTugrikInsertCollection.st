tests
testTugrikInsertCollection
  | resultString resultArray |
  resultString := TugrikDbServer
    insertOperation: 56
    collectionBytes:
      #[116 101 115 116 46 116 101 115 116 67 111 108 108 101 99 116 105 111 110]
    dataBytes: '[{''key'':''value''}]'.
  resultArray := STON fromString: resultString.
  self halt