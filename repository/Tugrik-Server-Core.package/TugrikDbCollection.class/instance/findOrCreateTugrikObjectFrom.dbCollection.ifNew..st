object creation
findOrCreateTugrikObjectFrom: dict dbCollection: aTugrikDbCollection ifNew: newBlock
  ^ self collectionDb
    findOrCreateTugrikObjectFrom: dict
    dbCollection: aTugrikDbCollection
    ifNew: newBlock