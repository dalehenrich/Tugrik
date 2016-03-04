tests
testGciTsLogin
	"execute without error"

	| session |
	session := TugrikGciTsSession login: GsGciSessionDescription example.
	session logout