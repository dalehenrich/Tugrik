*GemStone-GCI-Core
localObjectToGciOopType: aTugricGciSession
	^ GsGciOopType fromInteger: ((self asciiValue bitAnd: 16rFFFF) << 16r08 bitOr: 16r1C)