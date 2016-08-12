accessing
resetRoot
  "self resetRoot"

  self abort.
  root ifNotNil: [ root valuesDo: [ :db | db resetCollections ] ].
  root := nil.
  self commit