queries
doInsert: dict
  self
    findOrCreateTugrikObjectFrom: dict
    dbCollection: self
    ifNew: [ :obj | self add: obj ]