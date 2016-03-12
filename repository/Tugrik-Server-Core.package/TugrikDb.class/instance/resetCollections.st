reset
resetCollections
  self collections valuesDo: [ :coll | coll removeIndexes ]