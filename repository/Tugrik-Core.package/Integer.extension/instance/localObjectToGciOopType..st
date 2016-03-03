*Tugrik-Core
localObjectToGciOopType: aTugricGciSession
	^ GsOopType fromInteger: (aTugricGciSession gciI64ToOop: self)