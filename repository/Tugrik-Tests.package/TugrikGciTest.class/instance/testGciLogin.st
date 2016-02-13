tests
testGciLogin
	"execute without error"

	| session |
	session := TugricGciSession login: GciSessionDescription example.
	session logout