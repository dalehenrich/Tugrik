operation API
queryOperation: id opCode: opCode collectionBytes: collectionBytes offset: mongoQueryOffset chunkSize: mongoQueryChunkSize dataBytes: dataBytes
	^ self
		performOperationOnServer: #queryOperation:opCode:collectionBytes:offset:chunkSize:dataBytes:
		withArgs:
			{id.
			opCode.
			collectionBytes.
			mongoQueryOffset.
			mongoQueryChunkSize.
			dataBytes}