testing
isOpen
	^ todeClient notNil and: [ self session isSessionValid ]