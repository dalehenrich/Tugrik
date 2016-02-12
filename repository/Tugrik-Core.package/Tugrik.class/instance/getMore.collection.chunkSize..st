private-communicating
getMore: idInteger collection: aString chunkSize: countInteger
	(GetMoreOperation
		collection: aString 
		id: idInteger 
		session: session
		cursorId: idInteger 
		returnCount: countInteger)
			write