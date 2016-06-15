private
tugrikBasicExample
  ^ '  "Based on https://gist.github.com/anonymous/4389646"
  "Connect Tugrik, database and create new collection"
  tugrik := Tugrik default.
  tugrik open.
  db := tugrik databaseNamed: ''library''.
  collection := db addCollection: ''books''.

  "We have to create instances of Dictionary to add items in collection."
  collection
    add:
      (Dictionary new
        at: #''name'' put: ''Tugrik In Action'';
        yourself).
  collection
    add:
      ({(#''name'' -> ''Scaling Tugrik'').
      (#''author'' -> #(''Sammy Thompson''))} as: Dictionary).

  "get all items of the collections"
  result := OrderedCollection new.
  collection
    do: [ :item | 
      result
        add:
          ''Name = '' , (item at: #''name'') , '', Author(s) = ''
            , (item at: #''author'' ifAbsent: ''(nothing)'') asString ].
  result inspect.

  "dispose collection and database"
  collection drop.
  db drop.
  tugrik close	  "close connection"
'