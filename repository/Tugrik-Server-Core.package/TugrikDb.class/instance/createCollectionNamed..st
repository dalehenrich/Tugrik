query processing
createCollectionNamed: collectionName
  | coll indexSpec |
  coll := RcIdentityBag new.
  indexSpec := RcEqualityIndexSpecification
    path: '_id.value'
    lastElementClass: Integer.
  indexSpec createIndexOn: coll.
  self collections at: collectionName put: coll.
  ^ Dictionary new
    at: 'ok' put: 0;
    yourself