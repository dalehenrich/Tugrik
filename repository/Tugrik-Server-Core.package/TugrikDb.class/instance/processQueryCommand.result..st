query processing
processQueryCommand: queryDict result: result
  queryDict
    keysAndValuesDo: [ :key :value | 
      self
        performQueryCommand: key
        value: value
        queryDict: queryDict
        result: result ]