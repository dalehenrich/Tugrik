tests
testSigAbortHandlingNew
	| session1 session2 gciTestServerClassOopType oldStnSigAbortCrBacklog |
	session1 := TugrikGciSession login: GciSessionDescription example.
	session2 := TugrikGciSession login: GciSessionDescription example.
	gciTestServerClassOopType := session1 executeString: 'TugrikGciTestServerObj'.
	[ 
	| session2SessionId session1SessionId |
	session1SessionId := session1 send: #getSessionId to: gciTestServerClassOopType.
	session2SessionId := session2 send: #getSessionId to: gciTestServerClassOopType.
	oldStnSigAbortCrBacklog := session1 send: #getStnSignalAbortCrBacklog to: gciTestServerClassOopType.
	session1 send: #setStnSignalAbortCrBacklog: to: gciTestServerClassOopType withArgs: {20} ]
		ensure: [ 
			session1 send: #setStnSignalAbortCrBacklog: to: gciTestServerClassOopType withArgs: {oldStnSigAbortCrBacklog}.
			session1 logout.
			session2 logout ]