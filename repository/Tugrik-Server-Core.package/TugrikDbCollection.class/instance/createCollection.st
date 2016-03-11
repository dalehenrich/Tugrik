queries
createCollection
  | indexSpec |
  collection := RcIdentityBag new.
  indexSpec := RcEqualityIndexSpecification
    path: '_id.value'
    lastElementClass: Integer.
  indexSpec createIndexOn: collection.
  ^ Dictionary new
    at: 'ok' put: 0;
    yourself