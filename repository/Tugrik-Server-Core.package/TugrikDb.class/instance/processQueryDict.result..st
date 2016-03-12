query processing
processQueryDict: queryDict result: result
  queryDict
    keysAndValuesDo: [ :key :value | 
      key = 'create'
        ifTrue: [ result add: (self createCollectionNamed: value) ].
      key = 'drop'
        ifTrue: [ result add: (self dropCollectionNamed: value) ].
      key = 'count'
        ifTrue: [ result add: (self countCollectionNamed: value queryDict: queryDict) ] ]