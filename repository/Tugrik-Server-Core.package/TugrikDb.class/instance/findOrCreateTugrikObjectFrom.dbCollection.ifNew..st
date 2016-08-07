materialization
findOrCreateTugrikObjectFrom: dict dbCollection: aTugrikDbCollection ifNew: newBlock
  | obj hasOid theOid query |
  hasOid := false.
  dict
    at: self fieldRootId
    ifPresent: [ :oid | 
      hasOid := true.
      theOid := oid.
      obj := aTugrikDbCollection objWithOid: oid ifAbsent: [  ] ].
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
          (key ~= self fieldRootId)
            ifTrue: [ obj dynamicInstVarAt: key asSymbol put: value ];
            yourself ].
      newBlock value: obj ].
  ^ obj