queries
operatorFor: key
  OperatorMap at: key ifPresent: [ :op | ^ op ].
  self halt