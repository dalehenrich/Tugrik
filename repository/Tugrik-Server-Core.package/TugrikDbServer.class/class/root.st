accessing
root
  "self resetRoot"

  Root
    ifNil: [ 
      Root := RcKeyValueDictionary new.
      Root at: 'admin' put: (TugrikAdminDb named: 'admin') ].
  ^ Root