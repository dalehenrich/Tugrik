*GemStone-GCI-Core
localObjectToGciOopType: aTugricGciSession
	^ self
		ifTrue: [ GsOopType oopTrue ]
		ifFalse: [ GsOopType oopFalse ]