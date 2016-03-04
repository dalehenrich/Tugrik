*Tugrik-Core
performTugrikOperationOn: aTugrik
	^ aTugrik
		queryOperation: id
		collectionBytes: collectionBytes
		offset: mongoQuery offset
		chunkSize: mongoQuery chunkSize 
		dataBytes: self dataBytes