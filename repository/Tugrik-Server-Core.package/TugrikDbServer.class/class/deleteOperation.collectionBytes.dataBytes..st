operations
deleteOperation: id collectionBytes: collectionBytes dataBytes: dataBytes
  | collectionString data tokens dbName db collectionName result operationType |
  collectionString := collectionBytes decodeFromUTF8.
  data := STON fromString: dataBytes.
  tokens := collectionString findTokens: '.'.
  dbName := tokens at: 1.
  operationType := tokens at: 2.
  System abort.
  db := self databaseNamed: dbName.
  operationType = '$cmd'
    ifTrue: [  ]
    ifFalse: [ 
      collectionName := operationType.
      result := db deleteOperation: id collectionName: collectionName data: data ].
  System commit.
  ^ result