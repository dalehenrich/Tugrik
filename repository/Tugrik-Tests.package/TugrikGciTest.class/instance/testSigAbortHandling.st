tests
testSigAbortHandling
	| session1 session2 oldStnSigAbortCrBacklog count limit session2SessionId session1SessionId |
	session1 := TugrikGciSession login: GciSessionDescription example.
	session2 := TugrikGciSession login: GciSessionDescription example.
	session1SessionId := session1 executeString: 'System session'.
	session2SessionId := session2 executeString: 'System session'.
	[ 
	| gciErrSType |
	oldStnSigAbortCrBacklog := session1 executeString: 'System stoneConfigurationAt: #StnSignalAbortCrBacklog'.
	session1
		executeString:
			'System stoneConfigurationAt: #StnSignalAbortCrBacklog put: 10.
	System enableSignaledFinishTransactionError'.
	session2 executeString: 'System enableSignaledFinishTransactionError'.
	count := 0.
	limit := 20.
	[ count < limit ]
		whileTrue: [ 
			session1 executeString: 'UserGlobals at:#''TUGRIK_TESTING'' put:Object new. System commit'.
			(Delay forMilliseconds: 50) wait.
			count := count + 1 ].
	session2 gciPollForSignal
		ifFalse: [ 
			(session1 executeString: 'System sessionsReferencingOldestCr includes: ' , session2SessionId printString)
				ifTrue: [ self fail: 'expected a pending SigAbort error' ]
				ifFalse: [ 
					| sessions otherSessionNames result |
					sessions := session1
						executeString:
							'| stream |
					stream := WriteStream on: String new.
					stream nextPutAll: ''#(''.
					System sessionsReferencingOldestCrInTransaction do: [:each | stream nextPutAll: each printString; cr].
					stream nextPutAll: '')''.
					stream contents'.
					otherSessionNames := session1 executeString: 'System otherSessionNames'.
					result := 'this is not the session you are looking for (' , session2SessionId printString , ' '
						, session1SessionId printString , ') ' , sessions printString , ' -> ' , otherSessionNames.
					self halt: result ] ].
	self halt.
	gciErrSType := session2 getGciErrSType.
	self assert: gciErrSType notNil.
	self assert: gciErrSType number = 6012.	"#rtErrSignalFinishTransaction"
	self assert: gciErrSType message = 'TransactionBacklog occurred (notification 6012), inTransaction=nil'.
	gciErrSType number = 6012
		ifTrue: [ 
			"STN_COMMIT_RECORD_QUEUE_SIZE and STN_SIGNAL_ABORT_CR_BACKLOG before and after?"
			session2
				executeString:
					'System abortTransaction.
		System enableSignaledFinishTransactionError' ] ]
		ensure: [ 
			session1
				executeString: 'System stoneConfigurationAt: #StnSignalAbortCrBacklog put: ' , oldStnSigAbortCrBacklog printString.
			session1 executeString: 'UserGlobals removeKey:#''TUGRIK_TESTING'' ifAbsent:[]. System commit'.
			session1 logout.
			session2 logout ]