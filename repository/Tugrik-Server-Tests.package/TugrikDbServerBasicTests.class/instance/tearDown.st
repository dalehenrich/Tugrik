tests
tearDown
  super tearDown.
  TugrikDbServer root removeKey: 'test' ifAbsent: [  ].
  System commit