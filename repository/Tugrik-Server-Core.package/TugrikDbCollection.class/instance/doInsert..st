queries
doInsert: dict
  self class
    createTugrikObjectFrom: dict
    dbCollection: self
    ifNew: [ :obj | self add: obj ]