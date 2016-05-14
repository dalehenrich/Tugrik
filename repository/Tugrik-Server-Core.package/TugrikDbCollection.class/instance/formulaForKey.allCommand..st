formula creation
formulaForKey: key allCommand: allArray
  "$all

    The $all operator selects the documents where the value of a field is an array that contains all the specified elements. To specify an $all expression, use the following prototype:

    { <field>: { $all: [ <value1> , <value2> ... ] } }
"

  "set-valued query?"

  | selector |
  selector := key asSymbol.
  ^ TugrikBlockQueryPredicate
    selectBlock: [ :each | (each perform: selector) includesAllOf: allArray ]