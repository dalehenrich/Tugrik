tests
testLocalSpecials
	| session |
	session := TugrikGciSession login: GciSessionDescription example.
	[ 
	{"specials that need to be handled eventually"
	"specials that need to be handled eventually"
	('1' -> 1).
	('3/4' -> (3 / 4)).
	('1.0' -> 1.0).
	('''hello world''' -> 'hello world').
	('''élève en Français''' -> 'élève en Français').
	('#[ 1 ]' -> #[1])}.	"specials that need to be handled eventually"	"specials that need to be handled eventually"
	{('1' -> 1)}
		do: [ :assoc | 
			| resultOopType local |
			resultOopType := session executeString: assoc key.
			local := resultOopType asLocalObjectFor: session ifNotConverted: [ self fail: 'Expected a special' ].
			self assert: local = assoc value ] ]
		ensure: [ session logout ]