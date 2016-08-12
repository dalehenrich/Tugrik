query processing
performQueryCommand: key value: value queryDict: queryDict result: result server: aDbServer
  key = 'listDatabases'
    ifTrue: [ ^ result add: (self listDatabases: value queryDict: queryDict server: aDbServer) ].
  self error: 'Unknown command'