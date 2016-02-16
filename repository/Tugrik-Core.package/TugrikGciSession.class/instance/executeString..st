gci api
executeString: source
	^ self
		executeString: source
		sourceClass: GsOopType oopClassString
		contextObject: GsOopType oopNoContext
		symbolList: GsOopType oopNil
		flags: 0
		environmentId: 0