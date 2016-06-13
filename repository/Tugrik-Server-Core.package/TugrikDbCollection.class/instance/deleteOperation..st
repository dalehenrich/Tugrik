queries
deleteOperation: queryDict
  | objs |
  objs := self selectCollection: queryDict.
  objs do: [ :obj | collection remove: obj ].
  ^ Dictionary new
    at: 'ok' put: 1.0;
    yourself