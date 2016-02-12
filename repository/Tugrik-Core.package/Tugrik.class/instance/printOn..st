printing
printOn: aStream

	aStream 
		nextPutAll: 'Tugrik (';
		nextPutAll: sessionDescription gemstoneVersion;
		nextPutAll:'-';
		nextPutAll: sessionDescription stoneHost;
		nextPut: $:;
		nextPutAll: sessionDescription stoneName;
		nextPut: $)