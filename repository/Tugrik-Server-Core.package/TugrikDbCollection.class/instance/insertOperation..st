queries
insertOperation: queryArrayOrDict
  "assume result result is ok if returned ... otherwise error"

  queryArrayOrDict isArray
    ifTrue: [ queryArrayOrDict do: [ :dict | self doInsert: dict ] ]
    ifFalse: [ self doInsert: queryArrayOrDict ]