formula creation
formulaForWhere: selectBlockSource
  "similar to Mongo $where, except that the expression evaluated is a Smalltalk select block, not a javascript expression."

  "https://docs.mongodb.com/manual/reference/operator/query/where/#op._S_where"

  | selectBlock |
  selectBlock := selectBlockSource evaluate.
  ^ TugrikBlockQueryPredicate selectBlock: selectBlock