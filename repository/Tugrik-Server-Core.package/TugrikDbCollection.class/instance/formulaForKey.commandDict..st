formula creation
formulaForKey: key commandDict: commandDict
  commandDict size > 1
    ifTrue: [ self error: 'Expected only one key in a commandDict' ].
  commandDict
    keysAndValuesDo: [ :command :value | 
      command = '$all'
        ifTrue: [ ^ self formulaForKey: key allCommand: value ].
      (#('$or' '$and' '$not') includes: command)
        ifTrue: [ ^ self formulaForKey: key logicCommand: command predicates: value ].
      (#('$eq' '$gt' '$gte' '$lt' '$lte' '$ne') includes: command)
        ifTrue: [ ^ self formulaForKey: key compare: (self operatorFor: command) value: value ].
      (#('$size') includes: command)
        ifTrue: [ self formulaForKey: key sizeCommand: value ].
      self error: 'Unknown query command: ' , command printString ]