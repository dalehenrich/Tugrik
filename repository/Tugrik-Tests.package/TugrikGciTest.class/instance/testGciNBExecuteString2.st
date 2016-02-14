tests
testGciNBExecuteString2
	| session1 session2 resultOopType1 resultOopType2 limit count resultAssoc1 resultAssoc2 |
	session1 := TugricGciSession login: GciSessionDescription example.
	session2 := TugricGciSession login: GciSessionDescription example.
	resultOopType1 := resultOopType2 := nil.
	limit := 100.
	count := 0.
	[ 
	session1 executeStringNB: '(Delay forMilliseconds: 600) wait. String'.
	self assert: session1 callInProgress.
	session2 executeStringNB: '(Delay forMilliseconds: 800) wait. Utf8'.
	self assert: session2 callInProgress.
	[ 
	resultAssoc1 := session1 nbEnd_.
	resultAssoc2 := session2 nbEnd_.
	resultAssoc1 key ~~ #ready or: [ resultAssoc2 key ~~ #ready ] ]
		whileTrue: [ 
			count > limit
				ifTrue: [ 
					self fail: 'Timed out'.
					count := count + 1 ].
			(Delay forMilliseconds: 250) wait ].
	resultOopType1 := resultAssoc1 value.
	resultOopType2 := resultAssoc2 value.
	self assert: resultOopType1 = GsOopType oopClassString.
	self assert: resultOopType2 = GsOopType oopClassUtf8 ]
		ensure: [ 
			session1 logout.
			session2 logout ]