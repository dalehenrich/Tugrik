accessing
tugrikDbServerOopType
	^ tugrikDbServerOopType
		ifNil: [ tugrikDbServerOopType := self session executeString: self tugrikDbServerClassName ]