gci api
gciExecuteString: sourceString
	^ self
		gciExecuteString: sourceString
		sourceOopType: GsGciOopType oopClassString
		contextOopType: GsGciOopType oopIllegal
		symbolListOopType: GsGciOopType oopNil
		flags: 0
		environmentId: 0