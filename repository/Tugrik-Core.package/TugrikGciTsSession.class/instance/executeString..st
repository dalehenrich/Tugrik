gci api
executeString: sourceString
	^ self
		executeString: sourceString
		sourceOopType: GsOopType oopClassString
		contextOopType: GsOopType oopIllegal
		symbolListOopType: GsOopType oopNil
		flags: 0
		environmentId: 0