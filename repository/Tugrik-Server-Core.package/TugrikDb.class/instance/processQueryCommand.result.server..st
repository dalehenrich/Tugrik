query processing
processQueryCommand: queryDict result: result server: aDbServer
  queryDict
    keysAndValuesDo: [ :key :value | 
      self
        performQueryCommand: key
        value: value
        queryDict: queryDict
        result: result
        server: aDbServer ]