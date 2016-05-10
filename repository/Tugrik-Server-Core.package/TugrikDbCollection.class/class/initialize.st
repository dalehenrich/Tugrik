initialization
initialize
  "self initialize"

  "OperatorMap: https://docs.mongodb.com/manual/reference/operator/query/"

  " LogicalMap: https://docs.mongodb.com/manual/reference/operator/query-logical/"

  OperatorMap := Dictionary new
    at: '$eq' put: #'=';
    at: '$gt' put: #'>';
    at: '$gte' put: #'>=';
    at: '$lt' put: #'<';
    at: '$lte' put: #'<=';
    at: '$ne' put: #'~=';
    yourself.
  LogicalMap := Dictionary new
    at: '$or' put: #'|';
    at: '$and' put: #'&';
    at: '$not' put: #'not';
    yourself