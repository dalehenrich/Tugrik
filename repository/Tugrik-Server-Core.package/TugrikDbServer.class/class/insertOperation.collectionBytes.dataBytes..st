operations
insertOperation: id collectionBytes: collectionBytes dataBytes: dataBytes
  | collectionString data tokens dbName db collectionName result |
  collectionString := collectionBytes decodeFromUTF8.
  data := STON fromString: dataBytes.
  tokens := collectionString findTokens: '.'.
  dbName := tokens at: 1.
  collectionName := tokens at: 2.
  System abort.
  db := self root
    at: dbName
    ifAbsent: [ self root at: dbName put: (TugrikDb named: dbName) ].
  result := db insertOperation: id collectionName: collectionName data: data.
  System commit.
  ^ result