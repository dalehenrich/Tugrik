field filtering
applyFieldFilter: fieldsDictionary do: filterBlock
  | theCopy |
  fieldsDictionary
    keysAndValuesDo: [ :key :value | 
      | theValue sel |
      sel := key asSymbol.
      theValue := self dynamicInstVarAt: sel.
      theValue = value
        ifTrue: [ 
          theCopy
            ifNil: [ 
              theCopy := self class basicNew
                _id: self _id;
                _obj: self _obj;
                yourself ].
          theCopy dynamicInstVarAt: sel put: value ]
        ifFalse: [ 
          "does not match --- exit"
          ^ self ] ].
  theCopy ifNil: [ ^ self ].
  filterBlock value: theCopy