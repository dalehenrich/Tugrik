api
send: selector to: receiver withArgs: args
	| receiverOopType arrayOfGsOopTypes result |
	receiverOopType := receiver localObjectToGciOopType: self.
	arrayOfGsOopTypes := args collect: [ :each | each localObjectToGciOopType: self ].
	result := self
		gciPerform: receiverOopType
		selector: selector
		args: arrayOfGsOopTypes
		flags: 0
		environmentId: 0.
	^ result asLocalObjectFor: self