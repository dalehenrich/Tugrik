transactions
transact: aBlock
  | result aoomEnabled |
  aoomEnabled := AlmostOutOfMemory enabled.
  [ 
  AlmostOutOfMemory enableAtThreshold: 50.
  [ result := aBlock value ]
    on: AlmostOutOfMemory
    do: [ :ex | 
      self commit.
      AlmostOutOfMemory enable.
      ex resume ] ]
    ensure: [ 
      aoomEnabled
        ifFalse: [ AlmostOutOfMemory disable ] ].
  ^ result