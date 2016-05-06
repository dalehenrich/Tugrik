*Tugrik-Core
performTugrikOperationOn: aTugrik
	^ aTugrik
		updateOperation: id
		collectionBytes: collectionBytes
		dataBytes: self computeTugrikDataBytes