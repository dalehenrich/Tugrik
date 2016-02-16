*Tugrik-Core
asGsOopType: aTugrikGciSession
	^ aTugrikGciSession getGciErrSType
		ifNil: [ aTugrikGciSession gciLibrary oopNil ]
		ifNotNil: [ :gci32xErrSType | gci32xErrSType ]