accessing
databaseNamed: dbName
  ^ self root
    at: dbName
    ifAbsent: [ self root at: dbName put: (self dbClass named: dbName dbServer: self) ]