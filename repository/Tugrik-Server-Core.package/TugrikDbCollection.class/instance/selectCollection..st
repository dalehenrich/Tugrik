queries
selectCollection: queryDict
  "https://www.safaribooksonline.com/library/view/mongodb-the-definitive/9781449344795/ch04.html"

  "https://docs.mongodb.com/manual/reference/operator/query/"

  | query formula |
  queryDict isEmpty
    ifTrue: [ ^ collection copy ].
  queryDict
    keysAndValuesDo: [ :key :value | 
      | theFormula |
      theFormula := key = '$where'
        ifTrue: [ self formulaForWhere: value ]
        ifFalse: [ self formulaForKey: key value: value ].
      formula
        ifNil: [ formula := theFormula ]
        ifNotNil: [ formula := formula & theFormula ] ].
  query := GsQuery fromFormula: formula on: collection.
  ^ query queryResult asArray