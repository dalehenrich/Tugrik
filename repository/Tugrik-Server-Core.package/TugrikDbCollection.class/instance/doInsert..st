queries
doInsert: dict
  | obj hasOid theOid |
  hasOid := false.
  dict
    at: '_id'
    ifPresent: [ :oid | 
      hasOid := true.
      theOid := oid.
      self oidMap at: oid value ifPresent: [ :o | obj := o ] ].
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
          obj
            dynamicInstVarAt: key asSymbol put: value;
            yourself ].
      self add: obj ]