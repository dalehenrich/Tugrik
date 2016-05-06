query processing
performQueryCommand: key value: value queryDict: queryDict
  key = 'create'
    ifTrue: [ ^ self createCollectionNamed: value ].
  key = 'drop'
    ifTrue: [ ^ self dropCollectionNamed: value ].
  key = 'validate'
    ifTrue: [ ^ self validateCollectionNamed: value ].
  key = 'count'
    ifTrue: [ ^ self countCollectionNamed: value queryDict: queryDict ].
  self error: 'Unknown command'