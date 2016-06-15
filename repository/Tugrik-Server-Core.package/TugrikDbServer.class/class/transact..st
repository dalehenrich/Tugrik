transactions
transact: aBlock
  | result |
  self abort.
  result := aBlock value.
  self commit.
  ^ result