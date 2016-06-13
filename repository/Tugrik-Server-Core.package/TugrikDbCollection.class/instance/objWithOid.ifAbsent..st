oid
objWithOid: oid ifAbsent: absentBlock
  ^ (self oidQuery bind: 'oidValue' to: oid value)
    detect: [ :each | true ]
    ifNone: [  ]