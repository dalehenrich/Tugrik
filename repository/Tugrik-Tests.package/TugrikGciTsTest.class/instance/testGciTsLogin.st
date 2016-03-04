tests
testGciTsLogin
	"execute without error"

	| session |
	session := GsGciTsSession login: GsGciSessionDescription example.
	session logout