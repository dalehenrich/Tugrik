tests
testLocalWideStringObject
	| session |
	session := TugrikGciSession login: GciSessionDescription example.
	[ 
	{('''Я можу їсти скло, і воно мені не зашкодить.''' -> 'Я можу їсти скло, і воно мені не зашкодить.').	"Unicode16"
	('''𣎏''' -> '𣎏')	"Unicode32"}
		do: [ :assoc | 
			| local |
			local := session executeString: assoc key.	
			self assert: local = assoc value ] ]
		ensure: [ session logout ]