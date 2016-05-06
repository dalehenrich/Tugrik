queries
insertOperation: queryArrayOrDict
  | key value result query |
  query := 'each._id.value = oid' asQueryOn: collection.
  result := Dictionary new.
  queryArrayOrDict isArray
    ifTrue: [ 
      queryArrayOrDict
        do: [ :dict | self insertOperation: dict query: query result: result ] ]
    ifFalse: [ self insertOperation: queryArrayOrDict query: query result: result ].
  ^ result
    at: 'ok' put: 1.0;
    yourself