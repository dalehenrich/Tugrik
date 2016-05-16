formula creation
formulaForKey: key typeCommand: bsonType
  | selector |
  selector := key asSymbol.
  ^ TugrikBlockQueryPredicate
    selectBlock: [ :each | 
      | obj |
      obj := each perform: selector ]