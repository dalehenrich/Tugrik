tests
tearDown
  super tearDown.
  TugrikDbServer root removeKey: 'tests' ifAbsent: [  ]