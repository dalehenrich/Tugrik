printing
printOn: aStream 
	aStream 
		nextPutAll: 'OID';
		nextPut: $(;
		nextPutAll: self value asString;
		nextPut: $)