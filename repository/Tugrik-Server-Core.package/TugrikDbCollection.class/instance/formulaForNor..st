formula creation
formulaForNor: norArray
  "
$nor Query with Two Expressions

Consider the following query which uses only the $nor operator:

db.inventory.find( { $nor: [ { price: 1.99 }, { sale: true } ]  } )

This query will return all documents that:

    contain the price field whose value is not equal to 1.99 and contain the sale field whose value is not equal to true or
    contain the price field whose value is not equal to 1.99 but do not contain the sale field or
    do not contain the price field but contain the sale field whose value is not equal to true or
    do not contain the price field and do not contain the sale field
"

  | theFormula formula |
  norArray
    do: [ :dict | 
      dict size > 1
        ifTrue: [ self error: 'Too many associations in $nor predicate' ].
      dict
        keysAndValuesDo: [ :field :value | 
          | theField |
          theField := field asSymbol.
          theFormula := TugrikBlockQueryPredicate
            selectBlock: [ :each | 
              (each hasField: theField)
                ifTrue: [ (each perform: theField) ~= value ]
                ifFalse: [ true ] ] ].
      formula
        ifNil: [ formula := theFormula ]
        ifNotNil: [ formula := formula & theFormula ] ].
  ^ formula