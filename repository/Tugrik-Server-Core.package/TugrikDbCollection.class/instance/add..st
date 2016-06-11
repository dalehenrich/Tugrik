accessing
add: anObject
  anObject _id ifNotNil: [ :oid | self oidMap at: oid value put: anObject ].
  self collection add: anObject