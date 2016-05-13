queries
count: queryDict fields: fieldsDict
  | result query formula |
  queryDict
    keysAndValuesDo: [ :key :value | 
      | predicate |
      predicate := GsQueryPredicate
        path: 'each.#' , key
        operator: #'='
        constant: value.
      formula
        ifNil: [ formula := predicate ]
        ifNotNil: [ formula := formula & predicate ] ].
  query := GsQuery fromFormula: formula on: collection.
  result := query queryResult.
  ^ Dictionary new
    at: 'ok' put: 1.0;
    at: 'n' put: result size;
    yourself