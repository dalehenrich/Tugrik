tests
testFetchObjImpl
	| session |
	session := TugricGciSession login: GciSessionDescription example.
	[ 
	{('Object new' -> 0).
	('''str''' -> 1).
	('Set new' -> 2).
	('1' -> 3)}
		do: [ :assoc | 
			| resultOopType objImpl |
			resultOopType := session executeString: assoc key.
			objImpl := session fetchObjImpl: resultOopType.
			self assert: objImpl = assoc value ] ]
		ensure: [ session logout ]