gci api - non-blocking
pollForNbResult: pollDelayBlock
	| progressMade |
	[ 
	self
		gciNbEnd_OnNotReady: [ :progress | 
			progressMade := progress.
			true ]
		onReady: [ :gsOopType | ^ gsOopType asLocalObjectFor: self ]
		onError: [ :gci32xErrSType | ^ gci32xErrSType asLocalObjectFor: self ] ]
		whileTrue: [ pollDelayBlock value: progressMade ]