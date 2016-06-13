operations
close
	session
		ifNotNil: [ | sess |
			sess := session.
			session := nil.
			sess isSessionValid
				ifTrue: [ sess logout ] ]