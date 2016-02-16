gci api - non-blocking
pollForNbResult: pollBlock
	[ 
	self
		gciNbEnd_OnNotReady: [ :progress | true ]
		onReady: [ :gsOopType | ^ gsOopType ]
		onError: [ :gci32xErrSType | gci32xErrSType asLocalObjectFor: self ] ] whileTrue: pollBlock