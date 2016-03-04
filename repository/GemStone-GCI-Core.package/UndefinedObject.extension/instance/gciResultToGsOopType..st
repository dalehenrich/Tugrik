*GemStone-GCI-Core
gciResultToGsOopType: aTugrikGciSession
	^ aTugrikGciSession getGciErrSType ifNil: [ GsOopType oopNil ] ifNotNil: [ :gci32xErrSType | gci32xErrSType ]