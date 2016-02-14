tests
testGciNBExecuteString1
	| session resultOopType limit count resultAssoc |
	session := TugricGciSession login: GciSessionDescription example.
	resultOopType := nil.
	limit := 10.
	count := 0.
	[ 
	session executeStringNB: 'String'.
	self assert: session callInProgress.
	[ 
	resultAssoc := session nbEnd_.
	resultAssoc key ~~ #ready ]
		whileTrue: [ 
			count > limit
				ifTrue: [ 
					self fail: 'Timed out'.
					count := count + 1 ].
			(Delay forMilliseconds: 250) wait ].
	resultOopType := resultAssoc value ]
		ensure: [ session logout ].
	self assert: resultOopType = GsOopType oopClassString