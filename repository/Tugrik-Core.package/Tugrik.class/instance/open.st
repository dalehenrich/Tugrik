operations
open
	true
		ifTrue: [ | client |
			session
				ifNil: [ client := self todeClient.
					session := client session ] ]