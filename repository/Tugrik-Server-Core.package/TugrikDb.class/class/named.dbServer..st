instance creation
named: collectionName dbServer: dbServer
  ^ self new
    name: collectionName;
    dbServer: dbServer;
    yourself