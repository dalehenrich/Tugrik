operations
open
	| client |
	session
		ifNil: [ client := self todeClient.
			session := client session ]