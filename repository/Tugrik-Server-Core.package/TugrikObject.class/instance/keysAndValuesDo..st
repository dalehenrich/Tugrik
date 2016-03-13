ston
keysAndValuesDo: aBlock
  "Dictionary simulation --- STON treats this guy as a map"

  aBlock value: '_id' value: self _id.
  self dynamicInstanceVariables
    do: [ :dynVar | aBlock value: dynVar asString value: (self dynamicInstVarAt: dynVar) ]