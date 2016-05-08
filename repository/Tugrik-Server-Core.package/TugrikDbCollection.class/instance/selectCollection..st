queries
selectCollection: queryDict
  | query formula |
  queryDict isEmpty
    ifTrue: [ ^ collection ].
  queryDict
    keysAndValuesDo: [ :key :value | 
      | predicate |
      predicate := GsQueryPredicate
        path: 'each.#' , key
        operator: #'='
        constant: value.
      formula
        ifNil: [ formula := predicate asFormula ]
        ifNotNil: [ formula := formula & predicate ] ].
  query := GsQuery fromFormula: formula on: collection.
  ^ query queryResult asArray