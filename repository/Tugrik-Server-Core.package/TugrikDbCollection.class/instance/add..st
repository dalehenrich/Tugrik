accessing
add: anObject
  anObject _id ifNotNil: [ :oid | self oidIndex add: anObject ].
  self collection add: anObject