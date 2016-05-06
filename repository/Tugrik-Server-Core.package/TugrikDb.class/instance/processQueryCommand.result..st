query processing
processQueryCommand: queryDict result: result
  queryDict
    keysAndValuesDo: [ :key :value | result add: (self performQueryCommand: key value: value queryDict: queryDict) ]