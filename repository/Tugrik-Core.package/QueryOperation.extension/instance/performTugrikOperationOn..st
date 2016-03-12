*Tugrik-Core
performTugrikOperationOn: aTugrik
	^ aTugrik
		queryOperation: id
		opCode: self opCode
		collectionBytes: collectionBytes
		offset: mongoQuery offset
		chunkSize: mongoQuery chunkSize 
		dataBytes: self tugrikDataBytes