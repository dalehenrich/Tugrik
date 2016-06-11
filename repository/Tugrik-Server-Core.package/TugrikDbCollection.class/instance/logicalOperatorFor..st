queries
logicalOperatorFor: key
  LogicalMap at: key ifPresent: [ :op | ^ op ].
  self error: 'Unknown logical operation'