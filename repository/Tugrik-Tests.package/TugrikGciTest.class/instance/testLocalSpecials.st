tests
testLocalSpecials
	| session |
	session := TugrikGciSession login: GciSessionDescription example.
	[ 
	{('3/4' -> (3 / 4)).
	('-3/4' -> (-3 / 4)).
	('1' -> 1).
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