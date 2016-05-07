operation API
updateOperation: id collectionBytes: collectionBytes dataBytes: dataBytes flags: flags
	^ self
		performOperationOnServer: #updateOperation:collectionBytes:dataBytes:flags:
		withArgs:
			{id.
			collectionBytes.
			dataBytes.
			flags}