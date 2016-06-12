formula creation
formulaForKey: key compare: operator value: value
  | selector |
  selector := key asSymbol.
  ^ TugrikBlockQueryPredicate
    selectBlock: [ :each | (each dynamicInstVarAt: selector) perform: operator with: value ]