private
tugrikLargeExample
  ^ '  "Based on https://gist.github.com/anonymous/4389646"
  "Connect Tugrik, database and create new collection.
   Use TugrikUnsafeDbServer to avoid commit on every update."
  tugrik := Tugrik default.
  tugrik tugrikDbServerClassName: ''TugrikUnsafeDbServer''.
  tugrik open.

  "Add large number of collections"
  db := tugrik databaseNamed: ''test''.
  collection := db addCollection: ''dummy''.
  (1 to: 100000)
    do: [ :n | 
      collection
        add:
          ({(#''idx'' -> n).
          (#''number'' -> n atRandom)} as: Dictionary) ].
  tugrik session executeString: ''System commit''.
  result := collection select: [ :item | (item at: #''number'') < 10 ].
  result inspect.

  "dispose collection and database"
  collection drop.
  db drop.	"close connection"
  tugrik close	  "close connection"
'