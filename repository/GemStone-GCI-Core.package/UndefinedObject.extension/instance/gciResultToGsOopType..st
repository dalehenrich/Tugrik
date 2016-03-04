*GemStone-GCI-Core
gciResultToGsOopType: aTugrikGciSession
	^ aTugrikGciSession getGciErrSType ifNil: [ GsGciOopType oopNil ] ifNotNil: [ :gci32xErrSType | gci32xErrSType ]