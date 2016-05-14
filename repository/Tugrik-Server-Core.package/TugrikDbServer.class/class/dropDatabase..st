operations
dropDatabase: aTugrikDb
  ^ self root removeKey: aTugrikDb name ifAbsent: [  ]