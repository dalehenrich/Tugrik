queries
insertOperation: dict query: query
  | obj hasOid theOid |
  hasOid := false.
  obj := dict
    at: '_id'
    ifPresent: [ :oid | 
      hasOid := true.
      theOid := oid.
      (query bind: 'oid' to: oid value) queryResult
        detect: [ :each | true ]
        ifNone: [ nil ] ].
  obj
    ifNil: [ 
      obj := hasOid
        ifTrue: [ 
          TugrikObject basicNew
            _id: theOid;
            yourself ]
        ifFalse: [ TugrikObject new ].
      dict
        keysAndValuesDo: [ :key :value | 
          | keyString keySymbol |
          keyString := key asString.
          keySymbol := key asSymbol.
          keyString ~= '_id'
            ifTrue: [ 
              (TugrikObject includesSelector: keySymbol)
                ifFalse: [ 
                  TugrikObject
                    compile:
                      keyString , ' ^self dynamicInstVarAt: #' , keyString
                    classified: '*generated'.
                  (false
                    and: [ self validateClassForIndexCreation: value class ])
                    ifTrue: [ 
                      | indexSpec |
                      indexSpec := RcEqualityIndexSpecification
                        path: '#' , key
                        lastElementClass: value class.
                      indexSpec createIndexOn: collection ] ].
              obj
                dynamicInstVarAt: key asSymbol put: value;
                yourself ] ].
      collection add: obj ]