operations
close
	true
		ifTrue: [ session ifNotNil: [ | sess |
				sess := session.
				session := nil.
				sess isSessionValid ifTrue: [ sess logout ] . ]]