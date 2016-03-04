gci api - non-blocking
gciExecuteStringNB: source
	^ self
		gciExecuteStringNB: source
		sourceClass: GsGciOopType oopClassString
		contextObject: GsGciOopType oopNoContext
		symbolList: GsGciOopType oopNil
		flags: 0
		environmentId: 0