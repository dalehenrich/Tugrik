accessing
dynamicInstVarAt: key put: anObject
  key == #'_id'
    ifTrue: [ 
      self _id: anObject.
      ^ anObject ].
  ^ super dynamicInstVarAt: key put: anObject