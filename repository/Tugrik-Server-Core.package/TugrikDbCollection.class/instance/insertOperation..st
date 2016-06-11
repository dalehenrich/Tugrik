queries
insertOperation: queryArrayOrDict
  | result |
  result := Dictionary new.
  queryArrayOrDict isArray
    ifTrue: [ queryArrayOrDict do: [ :dict | self doInsert: dict ] ]
    ifFalse: [ self doInsert: queryArrayOrDict ].
  ^ result
    at: 'ok' put: 1.0;
    yourself