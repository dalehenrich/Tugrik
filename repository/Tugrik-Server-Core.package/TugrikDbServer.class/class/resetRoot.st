accessing
resetRoot
  System abort.
  Root ifNotNil: [ Root valuesDo: [ :db | db resetCollections ] ].
  Root := nil.
  System commit