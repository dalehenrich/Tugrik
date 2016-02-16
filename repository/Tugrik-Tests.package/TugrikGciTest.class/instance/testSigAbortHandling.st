tests
testSigAbortHandling
	| session1 session2 oldStnSigAbortCrBacklog count limit |
	session1 := TugrikGciSession login: GciSessionDescription example.
	session2 := TugrikGciSession login: GciSessionDescription example.
	[ 
	| oopType gciErrSType |
	oldStnSigAbortCrBacklog := (session1 gciExecuteString: 'System stoneConfigurationAt: #StnSignalAbortCrBacklog')
		asLocalObjectFor: session1.
	oopType := session1
		gciExecuteString:
			'System stoneConfigurationAt: #StnSignalAbortCrBacklog put: 10.
	System enableSignaledFinishTransactionError'.
	oopType := session2 gciExecuteString: 'System enableSignaledFinishTransactionError'.
	count := 0.
	limit := 20.
	[ count < limit ]
		whileTrue: [ 
			session1 gciExecuteString: 'UserGlobals at:#''TUGRIK_TESTING'' put:Object new. System commit'.
			(Delay forMilliseconds: 50) wait.
			count := count + 1 ].
	session2 gciPollForSignal
		ifFalse: [ self fail: 'expected a pending SigAbort error' ].
	gciErrSType := session2 gciError.
	self assert: gciErrSType notNil.
	self assert: gciErrSType number = 6012.	"#rtErrSignalFinishTransaction"
	self assert: gciErrSType message = 'TransactionBacklog occurred (notification 6012), inTransaction=nil'.
	gciErrSType number = 6012
		ifTrue: [ 
			"STN_COMMIT_RECORD_QUEUE_SIZE and STN_SIGNAL_ABORT_CR_BACKLOG before and after?"
			session2
				gciExecuteString:
					'System abortTransaction.
		System enableSignaledFinishTransactionError' ] ]
		ensure: [ 
			session1
				gciExecuteString: 'System stoneConfigurationAt: #StnSignalAbortCrBacklog put: ' , oldStnSigAbortCrBacklog printString.
			session1 gciExecuteString: 'UserGlobals removeKey:#''TUGRIK_TESTING'' ifAbsent:[]. System commit'.
			session1 logout.
			session2 logout ]