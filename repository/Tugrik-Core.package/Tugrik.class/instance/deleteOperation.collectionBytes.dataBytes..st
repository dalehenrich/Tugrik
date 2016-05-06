operation API
deleteOperation: id collectionBytes: collectionBytes dataBytes: dataBytes
^ self
		performOperationOnServer: #deleteOperation:collectionBytes:dataBytes:
		withArgs:
			{id.
			collectionBytes.
			dataBytes}