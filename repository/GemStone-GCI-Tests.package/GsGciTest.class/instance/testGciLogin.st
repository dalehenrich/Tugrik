tests
testGciLogin
	"execute without error"

	| session |
	session := GsGciSession login: GsGciSessionDescription example.
	session logout