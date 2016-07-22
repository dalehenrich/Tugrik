accessing
dynamicInstVarAt: key
  key == #'_id'
    ifTrue: [ ^ self _id ].
  ^ super dynamicInstVarAt: key