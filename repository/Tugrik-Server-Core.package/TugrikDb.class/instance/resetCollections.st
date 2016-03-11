reset
resetCollections
  self collections valuesDo: [ :coll | coll resetCollections ]