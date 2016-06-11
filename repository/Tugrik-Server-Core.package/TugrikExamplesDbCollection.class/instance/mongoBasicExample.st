private
mongoBasicExample
  ^ '  "From https://gist.github.com/anonymous/4389646"
  "Connect MongoDB, databaes and create new collection"
  mongo := Mongo default.
  mongo open.
  db := mongo databaseNamed: ''library''.
  collection := db addCollection: ''books''.
  "We have to create instances of Dictionary to add items in collection."
  collection
    add:
      (Dictionary new
        at: #''name'' put: ''MongoDB In Action'';
        yourself).
  collection
    add:
      ({(#''name'' -> ''Scaling MongoDB'').
      (#''author'' -> #(''Kristina Chodorow''))} as: Dictionary).

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
  mongo close	  "close connection"
'