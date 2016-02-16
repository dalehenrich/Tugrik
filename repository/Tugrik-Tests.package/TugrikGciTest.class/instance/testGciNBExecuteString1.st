tests
testGciNBExecuteString1
	| session resultOopType limit count |
	session := TugricGciSession login: GciSessionDescription example.
	resultOopType := nil.
	limit := 10.
	count := 0.
	[ 
	session executeStringNB: 'String'.
	self assert: session callInProgress.
	[ 
	session
		nbEnd_OnNotReady: [ 
			"keep polling"
			false ]
		onProgress: [ 
			"keep polling"
			false ]
		onReady: [ :gsOopType | 
			"got our result"
			resultOopType := gsOopType.
			true ]
		onError: [ 
			"not supposed to happen - call #gciErr"
			self fail: 'Unexpected error' ] ]
		whileFalse: [ 
			count > limit
				ifTrue: [ 
					self fail: 'Timed out'.
					count := count + 1 ].
			(Delay forMilliseconds: 250) wait ] ]
		ensure: [ session logout ].
	self assert: resultOopType = GsOopType oopClassString