queries
updateOperation: anArray flags: flags
  | result oldObj newObj theObj |
  result := Dictionary new
    at: 'ok' put: 1.0;
    yourself.
  oldObj := anArray at: 1.
  newObj := anArray at: 2.
  oldObj
    at: '_id'
    ifPresent: [ :oid | 
      theObj := self oidMap
        at: oid value
        ifAbsent: [ self error: 'Object with id: ' , oid printString , ' not found' ] ]
    ifAbsent: [ 
      theObj := (self selectCollection: oldObj)
        detect: [ :each | true ]
        ifNone: [ 
          flags = 1
            ifTrue: [ 
              "upsert"
              self doInsert: newObj.
              theObj := (self selectCollection: oldObj)
                detect: [ :each | true ]
                ifNone: [ ^ result ] ]
            ifFalse: [ ^ result ] ] ].
  newObj
    keysAndValuesDo: [ :key :value | theObj dynamicInstVarAt: key asSymbol put: value ].
  ^ result