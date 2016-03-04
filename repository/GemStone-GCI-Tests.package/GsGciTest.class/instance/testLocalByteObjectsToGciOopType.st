tests
testLocalByteObjectsToGciOopType
	| session |
	session := GsGciSession login: GsGciSessionDescription example.
	[ 
	{'hello world'. "Unicode7"
	#'hello world'.
	'élève en Français'.
	#'élève en Français'. "ASCII8"
	'Я можу їсти скло, і воно мені не зашкодить.'.	"Unicode16"
	#'Я можу їсти скло, і воно мені не зашкодить.'.
	'𣎏'.	"Unicode32"
	#'𣎏'.
	#[1]}
		do: [ :localByteObject | 
			| gsOopType |
			gsOopType := localByteObject localObjectToGciOopType: session.
			self assert: (gsOopType asLocalByteObj: session) = localByteObject ] ]
		ensure: [ session logout ]