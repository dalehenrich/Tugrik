private
mongoLargeExample
  ^ '  "From https://gist.github.com/anonymous/4389646"
  "Connect MongoDB, databaes and create new collection"
  mongo := Mongo default.
  mongo open.

  "Add large number of collections"
  db := mongo databaseNamed: ''test''.
  collection := db addCollection: ''dummy''.
  elapsed := Time millisecondsToRun: [ 
    (1 to: 100000)
    do: [ :n | 
      collection
        add:
          ({(#''idx'' -> n).
          (#''number'' -> n atRandom)} as: Dictionary) ] ].
  elapsed inspect.
  result := collection select: [ :item | (item at: #''number'') < 10 ].
  result inspect.

  "dispose collection and database"
  collection drop.
  db drop.
  mongo close	  "close connection"
'