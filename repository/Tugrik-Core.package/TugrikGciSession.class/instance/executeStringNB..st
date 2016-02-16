gci api - non-blocking
executeStringNB: source
	^ self
		executeStringNB: source
		sourceClass: GsOopType oopClassString
		contextObject: GsOopType oopNoContext
		symbolList: GsOopType oopNil
		flags: 0
		environmentId: 0