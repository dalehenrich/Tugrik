operations
close
	todeClient
		ifNotNil: [ :client | 
			todeClient := nil.
			client logout ]