accessing
resetRoot
  "self resetRoot"

  self abort.
  Root ifNotNil: [ Root valuesDo: [ :db | db resetCollections ] ].
  Root := nil.
  self commit