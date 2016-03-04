gci api
gciExecuteString: source
	^ self
		gciExecuteString: source
		sourceClass: GsOopType oopClassString
		contextObject: GsOopType oopNoContext
		symbolList: GsOopType oopNil
		flags: 0
		environmentId: 0