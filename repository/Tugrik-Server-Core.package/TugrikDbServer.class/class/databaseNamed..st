accessing
databaseNamed: dbName
  ^ self root
    at: dbName
    ifAbsent: [ self root at: dbName put: (TugrikDb named: dbName dbServer: self) ]