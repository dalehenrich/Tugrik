printing
printOn: aStream

	aStream nextPutAll: 'GsOopType('.
	self asInteger printOn: aStream.
	aStream nextPut: $).
	
		