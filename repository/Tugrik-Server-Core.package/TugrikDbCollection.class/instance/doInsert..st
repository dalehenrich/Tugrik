queries
doInsert: dict
  | obj hasOid theOid query |
  hasOid := false.
  dict
    at: '_id'
    ifPresent: [ :oid | 
      hasOid := true.
      theOid := oid.
      obj := self objWithOid: oid value ifAbsent: [  ] ].
  obj
    ifNil: [ 
      obj := hasOid
        ifTrue: [ 
          TugrikObject basicNew
            _id: theOid value;
            yourself ]
        ifFalse: [ TugrikObject new ].
      dict
        keysAndValuesDo: [ :key :value | 
          obj
            dynamicInstVarAt: key asSymbol put: value;
            yourself ].
      self add: obj ]