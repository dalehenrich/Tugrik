tests
xtestGciTsExecuteStringError1
	"System logout - exits gem and should result in an error"

	| session resultOopType |
	session := TugrikGciTsSession login: GciSessionDescription example.
	[ resultOopType := session executeString: 'GsFile gciLogServer:''Hello Sailor''. 
	System logout.
	String' ]
		ensure: [ session logout ].
	self assert: resultOopType = GsOopType oopClassString