tests
testGciLogin
	"execute without error"

	| session |
	session := TugrikGciSession login: GciSessionDescription example.
	session logout