accessing
exceptionObj
	^GsGciOopType fromHandle: (handle structAt: 17 length: 8)