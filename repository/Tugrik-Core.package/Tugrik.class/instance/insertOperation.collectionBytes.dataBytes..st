operation API
insertOperation: id collectionBytes: collectionBytes dataBytes: dataBytes
	^ self
		performOperationOnServer: #insertOperation:collectionBytes:dataBytes:
		withArgs:
			{id.
			collectionBytes.
			dataBytes}