gci api - non-blocking
nbEnd_OnReady: readyBlock onError: errorBlock
	"Answer true if ready or error ... false (continue polling) otherwise"

	self
		nbEnd_OnNotReady: [ ^ false ]
		onProgress: [ ^ false ]
		onReady: readyBlock
		onError: errorBlock.
	^ true