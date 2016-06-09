command processing
listDatabases: value queryDict: queryDict
  | dbs |
  dbs := TugrikDbServer root values
    collect: [ :db | 
      Dictionary new
        at: 'name' put: db name;
        yourself ].
  ^ Dictionary new
    at: 'ok' put: 1.0;
    at: 'databases' put: dbs;
    yourself