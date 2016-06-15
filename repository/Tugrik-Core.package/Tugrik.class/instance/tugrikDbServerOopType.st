accessing
tugrikDbServerOopType
	^ tugrikDbServerOopType
		ifNil: [ tugrikDbServerOopType := session executeString: self tugrikDbServerClassName ]