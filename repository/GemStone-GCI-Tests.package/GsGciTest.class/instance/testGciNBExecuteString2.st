tests
testGciNBExecuteString2
	| session1 session2 resultOopType1 resultOopType2 limit count done1 done2 |
	session1 := GsGciSession login: GsGciSessionDescription example.
	session2 := GsGciSession login: GsGciSessionDescription example.
	resultOopType1 := resultOopType2 := nil.
	limit := 100.
	count := 0.
	done1 := done2 := false.
	[ 
	session1 gciExecuteStringNB: '(Delay forMilliseconds: 600) wait. String'.
	self assert: session1 gciCallInProgress.
	session2 gciExecuteStringNB: '(Delay forMilliseconds: 800) wait. Utf8'.
	self assert: session2 gciCallInProgress.
	[ 
	done1
		ifFalse: [ 
			session1
				gciNbEnd_OnNotReady: [ :progress |  ]
				onReady: [ :gsOopType | 
					resultOopType1 := gsOopType.
					done1 := true ]
				onError: [ :gci32xErrSType | self fail: 'Unexpected error: ' , gci32xErrSType printString ] ].
	done2
		ifFalse: [ 
			session2
				gciNbEnd_OnNotReady: [ :progress |  ]
				onReady: [ :gsOopType | 
					resultOopType2 := gsOopType.
					done2 := true ]
				onError: [ :gci32xErrSType | self fail: 'Unexpected error: ' , gci32xErrSType printString ] ].
	done1 and: [ done2 ] ]
		whileFalse: [ 
			count > limit
				ifTrue: [ 
					self fail: 'Timed out'.
					count := count + 1 ].
			(Delay forMilliseconds: 250) wait ].
	self assert: resultOopType1 = GsGciOopType oopClassString.
	self assert: resultOopType2 = GsGciOopType oopClassUtf8 ]
		ensure: [ 
			session1 logout.
			session2 logout ]