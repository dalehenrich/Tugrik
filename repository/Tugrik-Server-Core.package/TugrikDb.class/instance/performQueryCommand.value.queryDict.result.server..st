query processing
performQueryCommand: key value: value queryDict: queryDict result: result server: aDbServer
  key = 'create'
    ifTrue: [ ^ result add: (self createCollectionNamed: value) ].
  key = 'drop'
    ifTrue: [ ^ result add: (self dropCollectionNamed: value) ].
  key = 'validate'
    ifTrue: [ ^ result add: (self validateCollectionNamed: value) ].
  key = 'count'
    ifTrue: [ ^ result add: (self countCollectionNamed: value queryDict: queryDict) ].
  key = 'dropDatabase'
    ifTrue: [ ^ result add: (aDbServer dropDatabase: self) ].
  key = 'query'
    ifTrue: [ ^ self ].
  key = 'fields'
    ifTrue: [ ^ self ].
  self error: 'Unknown command'