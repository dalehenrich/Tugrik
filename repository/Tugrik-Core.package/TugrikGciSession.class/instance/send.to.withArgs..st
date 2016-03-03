api
send: selector to: receiverOopType withArgs: args
	| arrayOfArgOopTypes |
	self
		gciPerform: receiverOopType
		selector: selector
		args: arrayOfArgOopTypes
		flags: 0
		environmentId: 0