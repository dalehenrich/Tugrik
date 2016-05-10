queries
logicalOperatorFor: key
  LogicalMap at: key ifPresent: [ :op | ^ op ].
  self halt