tests
testLocalSpecials
	| session |
	session := TugrikGciSession login: GciSessionDescription example.
	[ 
	{"Objects that still need to be converted directly to local client side objects"
	('1' -> 1).
	('3/4' -> (3 / 4)).
	('''hello world''' -> 'hello world').
	('''élève en Français''' -> 'élève en Français').
	('#[ 1 ]' -> #[1])}.	"Objects that still need to be converted directly to local client side objects"
	{('1' -> 1).
	('-1' -> -1).
	('$a' -> $a).
	('nil' -> nil).
	('false' -> false).
	('1.0' -> 1.0).
	('-1.0' -> -1.0)}
		do: [ :assoc | 
			| local |
			local := session executeString: assoc key.
			self assert: local = assoc value ] ]
		ensure: [ session logout ]