query processing
processQuery: query result: result
  query
    keysAndValuesDo: [ :key :value | self doQuery: key value: value result: result ]