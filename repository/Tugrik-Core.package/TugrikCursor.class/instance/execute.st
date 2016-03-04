executing
execute
	| limit reply numberReturned |
	numberReturned := 0.
	limit := query limit.
	limit = 0
		ifTrue: [ limit := Float infinity ].
	limit < query chunkSize
		ifTrue: [ query chunkSize: limit ].
	reply := root cursorQuery: query.
	[ 
	reply
		do: [ :each | 
			numberReturned < limit
				ifTrue: [ 
					query doBlock value: each.
					numberReturned := numberReturned + 1 ] ].
	reply isFinished or: [ numberReturned >= limit ] ] whileFalse