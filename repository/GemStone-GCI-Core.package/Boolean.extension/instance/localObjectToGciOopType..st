*GemStone-GCI-Core
localObjectToGciOopType: aTugricGciSession
	^ self
		ifTrue: [ GsGciOopType oopTrue ]
		ifFalse: [ GsGciOopType oopFalse ]