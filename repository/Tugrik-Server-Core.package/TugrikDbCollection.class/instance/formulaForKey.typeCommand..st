formula creation
formulaForKey: key typeCommand: bsonType
  "
$type

    $type selects the documents where the value of the field is an instance of the specified BSON type. Querying by data type is useful when dealing with highly unstructured data where data types are not predictable.

    A $type expression has the following syntax:

    Changed in version 3.2.

    { field: { $type: <BSON type number> | <String alias> } }

    Available Types describes the BSON types and their corresponding numeric and string aliases.
"

  | selector class |
  selector := key asSymbol.
  class := (bsonType isKindOf: CharacterCollection)
    ifTrue: [ TypeToClassMap at: (AliasToTypeMap at: bsonType) ]
    ifFalse: [ TypeToClassMap at: bsonType ].
  ^ TugrikBlockQueryPredicate
    selectBlock: [ :each | 
      | obj |
      obj := each dynamicInstVarAt: selector.
      obj isKindOf: class ]