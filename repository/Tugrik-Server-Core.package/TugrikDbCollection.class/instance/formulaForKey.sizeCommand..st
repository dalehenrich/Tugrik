formula creation
formulaForKey: key sizeCommand: size
  | selector |
  selector := key asSymbol.
  ^ TugrikBlockQueryPredicate
    selectBlock: [ :each | 
      | obj |
      obj := each perform: selector.
      obj isArray
        ifTrue: [ obj size = size ]
        ifFalse: [ false ] ]