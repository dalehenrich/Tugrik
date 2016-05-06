operation API
updateOperation: id collectionBytes: collectionBytes dataBytes: dataBytes
	^ self
		performOperationOnServer: #updateOperation:collectionBytes:dataBytes:
		withArgs:
			{id.
			collectionBytes.
			dataBytes}