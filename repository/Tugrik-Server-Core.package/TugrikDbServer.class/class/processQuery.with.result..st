query processing
processQuery: query with: collectionString result: result
  query
    keysAndValuesDo: [ :key :value | 
      self
        doQuery: collectionString
        key: key
        value: value
        result: result ]