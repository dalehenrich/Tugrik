queries
updateOperation: anArray flags: flags
  | result query oldObj newObj theObj |
  result := Dictionary new
    at: 'ok' put: 1.0;
    yourself.
  query := 'each._id.value = oid' asQueryOn: collection.
  oldObj := anArray at: 1.
  newObj := anArray at: 2.
  oldObj
    at: '_id'
    ifPresent: [ :oid | 
      theObj := (query bind: 'oid' to: oid value) queryResult
        detect: [ :each | true ]
        ifNone: [ self error: 'Object with id: ' , oid printString , ' not found' ] ]
    ifAbsent: [ 
      theObj := (self selectCollection: oldObj)
        detect: [ :each | true ]
        ifNone: [ 
          flags = 1
            ifTrue: [ 
              "upsert"
              self insertOperation: newObj query: query.
              theObj := (self selectCollection: oldObj)
                detect: [ :each | true ]
                ifNone: [ ^ result ] ]
            ifFalse: [ ^ result ] ] ].
  newObj
    keysAndValuesDo: [ :key :value | theObj dynamicInstVarAt: key asSymbol put: value ].
  ^ result