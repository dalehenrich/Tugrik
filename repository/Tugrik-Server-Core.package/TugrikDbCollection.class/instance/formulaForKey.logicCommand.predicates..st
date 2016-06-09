formula creation
formulaForKey: key logicCommand: command predicates: predicateArrayOrValue
  | formula theFormula logicalOperator |
  logicalOperator := self logicalOperatorFor: command.
  predicateArrayOrValue isArray
    ifTrue: [ 
      predicateArrayOrValue
        do: [ :dict | 
          (dict isKindOf: Dictionary)
            ifTrue: [ 
              dict size > 1
                ifTrue: [ self error: 'Expected only one key in a queryPredicate' ].
              dict
                keysAndValuesDo: [ :cmd :value | theFormula := self formulaForKey: cmd value: value ] ]
            ifFalse: [ self error: 'Expected a queryPredicate object' ].
          formula
            ifNil: [ formula := theFormula ]
            ifNotNil: [ formula := formula perform: logicalOperator with: theFormula ] ] ]
    ifFalse: [ formula := self formulaForKey: key value: predicateArrayOrValue ].
  ^ formula