query processing
performQueryCommand: key value: value queryDict: queryDict result: result
  key = 'listDatabases'
    ifTrue: [ ^ result add: (self listDatabases: value queryDict: queryDict) ].
  self error: 'Unknown command'