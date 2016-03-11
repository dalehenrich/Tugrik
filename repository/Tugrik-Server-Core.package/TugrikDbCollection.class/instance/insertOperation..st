queries
insertOperation: dataArray
  | key value result query |
  query := '_id.value == oid' asQueryOn: collection.
  result := Dictionary new.
  dataArray
    do: [ :dict | 
      | obj |
      obj := TugrikObject new.
      dict
        keysAndValuesDo: [ :key :value | 
          obj
            dynamicInstVarAt: key asSymbol put: value;
            yourself.
          collection add: obj ] ].
  result
    at: 'ok' put: 0;
    yourself.
  ^ result