query processing
processQueryCommand: queryDict result: result
  queryDict
    keysAndValuesDo: [ :key :value | 
      key = 'create'
        ifTrue: [ result add: (self createCollectionNamed: value) ].
      key = 'drop'
        ifTrue: [ result add: (self dropCollectionNamed: value) ].
      key = 'validate'
        ifTrue: [ result add: (self validateCollectionNamed: value) ].
      key = 'count'
        ifTrue: [ result add: (self countCollectionNamed: value queryDict: queryDict) ] ]