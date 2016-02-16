api
executeString: aString
	^ (self gciExecuteString: aString) asLocalObjectFor: self ifNotConverted: [ :aGsOopType |  aGsOopType ]