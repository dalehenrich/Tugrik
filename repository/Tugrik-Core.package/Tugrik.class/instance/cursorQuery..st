private-communicating
cursorQuery: aQuery
	(QueryOperation 
		id: self nextRequestID
		stream: stream
		query: aQuery)
			write