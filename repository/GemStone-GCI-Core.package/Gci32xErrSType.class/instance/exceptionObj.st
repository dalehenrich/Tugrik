accessing
exceptionObj
	^GsOopType fromHandle: (handle structAt: 17 length: 8)