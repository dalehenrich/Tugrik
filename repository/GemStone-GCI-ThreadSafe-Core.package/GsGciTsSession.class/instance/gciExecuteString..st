gci api
gciExecuteString: sourceString
	^ self
		gciExecuteString: sourceString
		sourceOopType: GsOopType oopClassString
		contextOopType: GsOopType oopIllegal
		symbolListOopType: GsOopType oopNil
		flags: 0
		environmentId: 0