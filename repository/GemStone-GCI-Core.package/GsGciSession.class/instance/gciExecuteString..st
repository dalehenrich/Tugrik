gci api
gciExecuteString: source
	^ self
		gciExecuteString: source
		sourceClass: GsGciOopType oopClassString
		contextObject: GsGciOopType oopNoContext
		symbolList: GsGciOopType oopNil
		flags: 0
		environmentId: 0