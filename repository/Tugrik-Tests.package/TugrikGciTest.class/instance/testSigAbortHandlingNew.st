tests
testSigAbortHandlingNew
	| session1 session2 gciTestServerClassOopType |
	true
		ifTrue: [ ^ self ].
	session1 := TugrikGciSession login: GciSessionDescription example.
	session2 := TugrikGciSession login: GciSessionDescription example.
	gciTestServerClassOopType := session1 executeString: 'TugrikGciTestServerObj'.
	[ 
	| session2SessionId session1SessionId |
	session1SessionId := session1 executeString: 'System session'.
	session2SessionId := session2 executeString: 'System session' ]
		ensure: [ 
			session1 logout.
			session2 logout ]