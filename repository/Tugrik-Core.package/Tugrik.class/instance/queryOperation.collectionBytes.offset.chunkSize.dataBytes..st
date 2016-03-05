operation API
queryOperation: id collectionBytes: collectionBytes offset: mongoQueryOffset chunkSize: mongoQueryChunkSize dataBytes: dataBytes
	session := GsGciSession login: self sessionDescription.
	[ 
	| dbOopType resultString |
	dbOopType := session executeString: 'TugrikDbServer'.
	resultString := session
		send: #queryOperation:collectionBytes:offset:chunkSize:dataBytes:
		to: dbOopType
		withArgs:
			{id.
			collectionBytes.
			mongoQueryOffset.
			mongoQueryChunkSize.
			dataBytes}.
	^ STON fromString: resultString ]
		ensure: [ 
			session logout.
			session := nil ]