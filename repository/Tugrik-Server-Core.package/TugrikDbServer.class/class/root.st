accessing
root
  "self resetRoot"

  Root
    ifNil: [ 
      Root := RcKeyValueDictionary new.
      Root
        at: 'admin' put: (TugrikAdminDb named: 'admin');
        at: 'tugrik examples' put: (TugrikExamplesDb named: 'tugrik examples');
        yourself ].
  ^ Root