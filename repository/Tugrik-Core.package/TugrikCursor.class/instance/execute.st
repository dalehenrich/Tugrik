executing
execute
	| limit reply numberReturned |
	numberReturned := 0.
	reply := nil.
	limit := query limit.
	limit = 0
		ifTrue: [ limit := Float infinity ].
	limit < query chunkSize
		ifTrue: [ query chunkSize: limit ].
	[ 
	reply isNil
		ifTrue: [ 
			| result |
			result := root cursorQuery: query.
			reply := TugrikReplyOperation new
				result: result;
				yourself ]
		ifFalse: [ self halt ].
	reply
		do: [ :each | 
			numberReturned < limit
				ifTrue: [ 
					query doBlock value: each.
					numberReturned := numberReturned + 1 ] ].
	reply isFinished or: [ numberReturned >= limit ] ] whileFalse