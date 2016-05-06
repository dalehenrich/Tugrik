private-communicating
cursorQuery: aQuery
	| id |
	id := self nextRequestID.
	(QueryOperation id: id stream: stream query: aQuery) performTugrikOperationOn: self.
	^ id