query processing
performQueryCommand: key value: value queryDict: queryDict
  key = 'listDatabases'
    ifTrue: [ ^ self listDatabases: value queryDict: queryDict ].
  self error: 'Unknown command'