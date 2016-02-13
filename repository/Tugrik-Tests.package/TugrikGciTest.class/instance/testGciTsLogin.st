tests
testGciTsLogin
	"execute without error"

	| session |
	session := TugricGciTsSession login: GciSessionDescription example.
	session logout