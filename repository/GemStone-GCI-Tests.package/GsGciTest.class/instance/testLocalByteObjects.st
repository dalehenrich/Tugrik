tests
testLocalByteObjects
	| session |
	session := GsGciSession login: GsGciSessionDescription example.
	[ 
	{('''hello world''' -> 'hello world').
	('''élève en Français''' -> 'élève en Français').
	('#[ 1 ]' -> #[1])}
		do: [ :assoc | 
			| local |
			local := session executeString: assoc key.
			self assert: local = assoc value ] ]
		ensure: [ session logout ]