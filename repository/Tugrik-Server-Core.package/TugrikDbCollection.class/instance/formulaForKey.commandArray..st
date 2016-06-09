formula creation
formulaForKey: key commandArray: commandArray
  (#('$or' '$and' '$not') includes: key)
    ifTrue: [ ^ self formulaForKey: key logicCommand: key predicates: commandArray ].
  (#('$nor') includes: key)
    ifTrue: [ ^ self formulaForNor: commandArray ].
  self error: 'Unknown query command: ' command printString