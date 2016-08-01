accessing
collections
  collections ifNil: [ self createCollections ].
  ^ collections