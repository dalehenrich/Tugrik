private-communicating
cursorQuery: aQuery
	(QueryOperation 
		id: self nextRequestID
		session: session
		query: aQuery)
			write