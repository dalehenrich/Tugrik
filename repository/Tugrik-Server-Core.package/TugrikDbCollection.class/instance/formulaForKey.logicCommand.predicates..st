formula creation
formulaForKey: key logicCommand: command predicates: predicateArray
  | formula theFormula logicalOperator |
  logicalOperator := self logicalOperatorFor: command.
  predicateArray
    do: [ :dict | 
      theFormula := (dict isKindOf: Dictionary)
        ifTrue: [ 
          dict size > 1
            ifTrue: [ self error: 'Expected only one key in a queryPredicate' ].
          dict
            keysAndValuesDo: [ :cmd :value | self formulaForKey: cmd value: value ] ]
        ifFalse: [ self error: 'Expected a queryPredicate object' ].
      formula
        ifNil: [ formula := theFormula ]
        ifNotNil: [ formula := formula perform: logicalOperator with: theFormula ] ].
  ^ formula