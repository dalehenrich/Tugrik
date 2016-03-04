printing
printOn: aStream
	aStream nextPutAll: 'GemStone Error (' , self number printString , '): ' , self message printString