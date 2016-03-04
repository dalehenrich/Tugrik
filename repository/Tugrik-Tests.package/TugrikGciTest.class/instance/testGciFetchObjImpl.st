tests
testGciFetchObjImpl
	| session |
	session := GsGciSession login: GsGciSessionDescription example.
	[ 
	{('Object new' -> 0).
	('''str''' -> 1).
	('Set new' -> 2).
	('1' -> 3)}
		do: [ :assoc | 
			| resultOopType objImpl |
			resultOopType := session gciExecuteString: assoc key.
			objImpl := session gciFetchObjImpl: resultOopType.
			self assert: objImpl = assoc value ] ]
		ensure: [ session logout ]