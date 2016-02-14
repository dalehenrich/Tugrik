tests
testSigAbortHandling
	| session1 session2 oldStnSigAbortCrBacklog |
	session1 := TugricGciSession login: GciSessionDescription example.
	session2 := TugricGciSession login: GciSessionDescription example.
	[ 
	| oopType |
	oldStnSigAbortCrBacklog := (session1 executeString: 'System stoneConfigurationAt: #StnSignalAbortCrBacklog')
		asLocalObjectFor: session1.
	oopType := session1
		executeString:
			'System stoneConfigurationAt: #StnSignalAbortCrBacklog put: 10.
	System enableSignaledFinishTransactionError'.
	oopType := session2 executeString: 'System enableSignaledFinishTransactionError'.
	[ false ] whileTrue: [ (Delay forMilliseconds: 250) wait ] ]
		ensure: [ 
			session1
				executeString: 'System stoneConfigurationAt: #StnSignalAbortCrBacklog put: ' , oldStnSigAbortCrBacklog printString.
			session1 logout.
			session2 logout ]