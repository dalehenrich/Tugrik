tests
testGciLogin
	"execute without error"

	| session |
	session := TugrikGciSession login: GsGciSessionDescription example.
	session logout