tests
testGciNBExecuteString2
	| session1 session2 resultOopType1 resultOopType2 limit count done1 done2 |
	session1 := TugricGciSession login: GciSessionDescription example.
	session2 := TugricGciSession login: GciSessionDescription example.
	resultOopType1 := resultOopType2 := nil.
	limit := 100.
	count := 0.
	done1 := done2 := false.
	[ 
	session1 executeStringNB: '(Delay forMilliseconds: 600) wait. String'.
	self assert: session1 callInProgress.
	session2 executeStringNB: '(Delay forMilliseconds: 800) wait. Utf8'.
	self assert: session2 callInProgress.
	[ 
	done1
		ifFalse: [ 
			session1
				nbEnd_OnNotReady: [ :progress |  ]
				onReady: [ :gsOopType | 
					resultOopType1 := gsOopType.
					done1 := true ]
				onError: [ self fail: 'Unexpected Error' ] ].
	done2
		ifFalse: [ 
			session2
				nbEnd_OnNotReady: [ :progress |  ]
				onReady: [ :gsOopType | 
					resultOopType2 := gsOopType.
					done2 := true ]
				onError: [ self fail: 'Unexpected Error' ] ].
	done1 and: [ done2 ] ]
		whileFalse: [ 
			count > limit
				ifTrue: [ 
					self fail: 'Timed out'.
					count := count + 1 ].
			(Delay forMilliseconds: 250) wait ].
	self assert: resultOopType1 = GsOopType oopClassString.
	self assert: resultOopType2 = GsOopType oopClassUtf8 ]
		ensure: [ 
			session1 logout.
			session2 logout ]