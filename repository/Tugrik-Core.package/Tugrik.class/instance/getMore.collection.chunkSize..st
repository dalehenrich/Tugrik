private-communicating
getMore: idInteger collection: aString chunkSize: countInteger
	(GetMoreOperation
		collection: aString 
		id: idInteger 
		stream: stream 
		cursorId: idInteger 
		returnCount: countInteger)
			write