operations
open
	false
		ifTrue: [ 
			"session created on demand for now"
			session := sessionDescription login ]