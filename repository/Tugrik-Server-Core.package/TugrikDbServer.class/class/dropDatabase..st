operations
dropDatabase: aTugrikDb
  self root removeKey: aTugrikDb name ifAbsent: [  ].
  ^ Dictionary new
    at: 'ok' put: 1.0;
    yourself