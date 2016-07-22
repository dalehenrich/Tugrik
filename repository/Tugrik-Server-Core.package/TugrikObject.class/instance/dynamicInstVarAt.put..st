accessing
dynamicInstVarAt: key put: anObject
  "patch -- see https://github.com/dalehenrich/Tugrik/commit/ba9e5ee8a82bb2b040be9ffdf043d5c21e2d687c and https://github.com/dalehenrich/Tugrik/commit/4241be8fa49f22b1864dd62a642cc0a9c9a9dbbe"

  key == #'_id'
    ifTrue: [ 
      self _id: anObject.
      ^ anObject ].
  ^ super dynamicInstVarAt: key put: anObject