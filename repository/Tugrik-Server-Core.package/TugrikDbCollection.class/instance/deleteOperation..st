queries
deleteOperation: queryDict
  | objs |
  objs := self selectCollection: queryDict.
  objs
    do: [ :obj | 
      collection remove: obj.
      obj _id ifNotNil: [ self oidIndex remove: obj ifAbsent: [  ] ] ].
  ^ Dictionary new
    at: 'ok' put: 1.0;
    yourself