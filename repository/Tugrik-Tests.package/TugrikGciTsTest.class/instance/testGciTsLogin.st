tests
testGciTsLogin
	"execute without error"

	| session |
	session := TugrikGciTsSession login: GciSessionDescription example.
	session logout