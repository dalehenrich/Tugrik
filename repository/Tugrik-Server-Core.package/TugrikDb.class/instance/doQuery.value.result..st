query processing
doQuery: key value: value result: result
  key = 'create'
    ifTrue: [ ^ result add: (self createCollectionNamed: value) ].
  key = 'count'
    ifTrue: [ ^ result add: (self countCollectionNamed: value) ].
  key = 'query'
    ifTrue: [ ^ result add: Dictionary new ].
  key = 'fields'
    ifTrue: [ ^ result add: Dictionary new ].
  self error: 'unknown query operation'