query processing
createCollectionNamed: collectionName
  self root at: collectionName put: RcIdentityBag new.
  ^ Dictionary new
    at: 'ok' put: 0;
    yourself