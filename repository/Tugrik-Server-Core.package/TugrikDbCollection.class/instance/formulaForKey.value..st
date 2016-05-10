formula creation
formulaForKey: key value: value
  ^ (value isKindOf: Dictionary)
    ifTrue: [ self formulaForKey: key commandDict: value ]
    ifFalse: [ self formulaForKey: key compare: #'=' value: value ]