queries
updateOperation: anArray
  | result query oldObj newObj theObj oid |
  result := Dictionary new.
  query := 'each._id.value = oid' asQueryOn: collection.
  oldObj := anArray at: 1.
  newObj := anArray at: 2.
  oid := oldObj at: '_id'.
  theObj := (query bind: 'oid' to: oid value) queryResult
    detect: [ :each | true ]
    ifNone: [ self error: 'Object with id: ' , oid printString , ' not found' ].
  newObj
    keysAndValuesDo: [ :key :value | theObj dynamicInstVarAt: key asSymbol put: value ].
  ^ result
    at: 'ok' put: 1.0;
    yourself