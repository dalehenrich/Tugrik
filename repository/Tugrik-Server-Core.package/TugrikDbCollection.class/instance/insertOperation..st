queries
insertOperation: dataArray
  | key value result query |
  query := 'each._id.value == oid' asQueryOn: collection.
  result := Dictionary new.
  dataArray
    do: [ :dict | 
      | obj |
      obj := TugrikObject new.
      dict
        keysAndValuesDo: [ :key :value | 
          | indexSpec |
          TugrikObject
            compile: key , ' ^self dynamicInstVarAt: #' , key printString
            classified: '*generated'.
          true
            ifTrue: [ 
              indexSpec := RcEqualityIndexSpecification
                path: '#' , key
                lastElementClass: value class.
              indexSpec createIndexOn: collection ].
          obj
            dynamicInstVarAt: key asSymbol put: value;
            yourself.
          collection add: obj ] ].
  result
    at: 'ok' put: 0;
    yourself.
  ^ result