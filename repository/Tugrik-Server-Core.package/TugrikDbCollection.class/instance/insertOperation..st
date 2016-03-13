queries
insertOperation: dataArray
  | key value result query |
  query := 'each._id.value == oid' asQueryOn: collection.
  result := Dictionary new.
  dataArray
    do: [ :dict | 
      | obj hasOid theOid |
      hasOid := false.
      obj := dict
        at: '_id'
        ifPresent: [ :oid | 
          hasOid := true.
          theOid := oid.
          query
            bind: 'oid' to: oid value;
            anyIfNone: [  ] ].
      obj
        ifNil: [ 
          obj := hasOid
            ifTrue: [ 
              TugrikObject
                basicNew;
                _id: theOid;
                yourself ]
            ifFalse: [ TugrikObject new ].
          dict
            keysAndValuesDo: [ :key :value | 
              key ~= '_id'
                ifTrue: [ 
                  | indexSpec |
                  (self validateClassForIndexCreation: value class)
                    ifTrue: [ 
                      TugrikObject
                        compile:
                          key , ' ^self dynamicInstVarAt: #' , key printString
                        classified: '*generated'.
                      indexSpec := RcEqualityIndexSpecification
                        path: '#' , key
                        lastElementClass: value class.
                      indexSpec createIndexOn: collection ].
                  obj
                    dynamicInstVarAt: key asSymbol put: value;
                    yourself ] ].
          collection add: obj ] ].
  result
    at: 'ok' put: 0;
    yourself.
  ^ result