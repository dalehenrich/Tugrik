oid
objWithOid: oidValue ifAbsent: absentBlock
  ^ (self oidQuery bind: 'oidValue' to: oidValue)
    detect: [ :each | true ]
    ifNone: [  ]