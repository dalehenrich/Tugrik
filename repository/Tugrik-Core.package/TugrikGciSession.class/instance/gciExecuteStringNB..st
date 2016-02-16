gci api - non-blocking
gciExecuteStringNB: source
	^ self
		gciExecuteStringNB: source
		sourceClass: GsOopType oopClassString
		contextObject: GsOopType oopNoContext
		symbolList: GsOopType oopNil
		flags: 0
		environmentId: 0