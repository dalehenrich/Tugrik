ston
fromSton: stonReader
  "Instances of STON mapClass will be read directly and won't arrive here.
	Other (sub)classes will use this method."

  | newObject |
  newObject := self basicNew.
  stonReader
    parseMapDo: [ :key :value | newObject dynamicInstVarAt: key put: value ].
  ^ newObject