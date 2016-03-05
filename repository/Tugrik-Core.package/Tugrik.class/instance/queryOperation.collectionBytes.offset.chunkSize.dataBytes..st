operation API
queryOperation: id collectionBytes: collectionBytes offset: mongoQueryOffset chunkSize: mongoQueryChunkSize dataBytes: dataBytes
	^ self
		performOperationOnServer: #queryOperation:collectionBytes:offset:chunkSize:dataBytes:
		withArgs:
			{id.
			collectionBytes.
			mongoQueryOffset.
			mongoQueryChunkSize.
			dataBytes}