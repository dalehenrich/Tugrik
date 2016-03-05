query processing
createCollectionNamed: collectionName
  self collections at: collectionName put: RcIdentityBag new.
  ^ Dictionary new
    at: 'ok' put: 0;
    yourself