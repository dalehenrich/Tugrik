command processing
listDatabases: value queryDict: queryDict
  | dbs |
  dbs := TugrikDbServer root values
    collect: [ :db | 
      Dictionary new
        at: 'name' put: db name;
        yourself ].
  ^ Dictionary new
    at: 'databases' put: dbs;
    yourself