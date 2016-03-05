collection processing
insertOperation: id collectionName: collectionName data: dataArray
  | obj key value coll result |
  coll := self collections at: collectionName.
  result := {}.
  dataArray
    do: [ :dict | 
      dict
        keysAndValuesDo: [ :key :value | 
          obj := TugrikObject new
            dynamicInstVarAt: key asSymbol put: value;
            yourself.
          coll add: obj ] ].
  ^ STON toString: result