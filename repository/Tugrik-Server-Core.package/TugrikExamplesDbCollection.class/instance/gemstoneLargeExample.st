examples
gemstoneLargeExample
  ^ '  "Based on https://gist.github.com/anonymous/4389646"
  "Connect Tugrik, databaes and create new collection by running GemStone server code directly"
  tugrik := Tugrik default.
  tugrik open.

  elapsed := tugrik session executeString: ''
  | db collection elapsed |
  "Add large number of collections"
  db := TugrikDbServer databaseNamed: ''''test''''.
  collection := db collectionNamed: ''''dummy''''.
  System commit.
  elapsed := System millisecondsToRun: [
    (1 to: 100000)
    do: [ :n | 
      collection
        add:
          (TugrikObject new
            dynamicInstVarAt: #idx put: n;
            dynamicInstVarAt: #number put: n atRandom;
            yourself).
       n \\ 1000 = 0 ifTrue: [ System commit ] ] ].
  System commit.
  elapsed''.
  elapsed inspect.
  db := tugrik databaseNamed: ''test''.
  collection := db getCollection: ''dummy''.
  result := collection select: [ :item | (item at: #''number'') < 10 ].
  result inspect.

  "dispose collection and database"
  collection drop.
  db drop.	"close connection"
  tugrik close
'