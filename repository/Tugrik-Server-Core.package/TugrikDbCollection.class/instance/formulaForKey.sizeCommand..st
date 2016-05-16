formula creation
formulaForKey: key sizeCommand: size
  "
$size

    The $size operator matches any array with the number of elements specified by the argument. For example:

    db.collection.find( { field: { $size: 2 } } );

    returns all documents in collection where field is an array with 2 elements. For instance, the above expression will return { field: [ red, green ] } and { field: [ apple, lime ] } but not { field: fruit } or { field: [ orange, lemon, grapefruit ] }. To match fields with only one element within an array use $size with a value of 1, as follows:

    db.collection.find( { field: { $size: 1 } } );

    $size does not accept ranges of values. To select documents based on fields with different numbers of elements, create a counter field that you increment when you add elements to a field.

    Queries cannot use indexes for the $size portion of a query, although the other portions of a query can use indexes if applicable.
"

  | selector |
  selector := key asSymbol.
  ^ TugrikBlockQueryPredicate
    selectBlock: [ :each | 
      | obj |
      obj := each perform: selector.
      obj isArray
        ifTrue: [ obj size = size ]
        ifFalse: [ false ] ]