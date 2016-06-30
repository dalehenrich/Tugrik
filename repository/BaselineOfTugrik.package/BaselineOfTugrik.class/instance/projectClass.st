accessing
projectClass
  "bullet proof until the day when MetacelloCypressBaselineProject included in standard Metacello release"

  "test change"

  ^ Smalltalk
    at: #'MetacelloCypressBaselineProject'
    ifAbsent: [ super projectClass ]