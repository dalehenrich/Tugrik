operations
updateOperation: id collectionBytes: collectionBytes dataBytes: dataBytes flags: flags
  | collectionString data tokens dbName db collectionName result operationType |
  collectionString := collectionBytes decodeFromUTF8.
  data := STON fromString: dataBytes.
  tokens := collectionString findTokens: '.'.
  dbName := tokens at: 1.
  operationType := tokens at: 2.
  System abort.
  db := self root
    at: dbName
    ifAbsent: [ self root at: dbName put: (TugrikDb named: dbName) ].
  operationType = '$cmd'
    ifTrue: [  ]
    ifFalse: [ 
      collectionName := operationType.
      result := db
        updateOperation: id
        collectionName: collectionName
        data: data
        flags: flags ].
  System commit.
  ^ result