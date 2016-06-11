private
tugrikBasicExample
  ^ '"Connect Tugrik, databaes and create new collection"
tugrik := Tugrik default.
tugrik open.
db := tugrik databaseNamed: ''library''.
collection := db addCollection: ''books''.
"If you want to use collection already exist, use collection: message instead of addCollection:"

"We have to create instances of Dictionary to add items in collection."
collection add: (Dictionary new at: #name put: ''Tugrik In Action''; yourself).
"almost same mean"
collection add: ({#name->''Scaling Tugrik'' . #author -> #(''Sammy Chan'')} as: Dictionary).
"get all items of the collections"
result := OrderedCollection new.
collection do: [ :item | result add: (''Name = '', (item at: #name), '', Author(s) = '', (item at: #author ifAbsent: ''(nothing)'') asString)].
result inspect.
"dispose collection and database"
collection drop.
db drop.

"Add large number of collections"
db := tugrik databaseNamed: ''test''.
collection := db addCollection: ''dummy''.
(1 to: 100000) do: [:n | collection add: ({#idx->n . #number->(n atRandom)} as: Dictionary)].
result := collection select: [ :item | (item at: #number) < 10].
result inspect.

"dispose collection and database"
collection drop.
db drop.

"close connection"
db close.
'