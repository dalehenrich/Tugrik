non-blocking
nbEnd_
	" GCI_RESULT_NOT_READY = 0,     /* nothing happened */
  GCI_RESULT_PROGRESSED = 1,    /* a packet was received */
  GCI_RESULT_READY = 2,         /* your result is now ready */
  GCI_RESULT_HAS_ERROR = 3      /* result is ready with error */
"

	| progress  result |
	nbEndAddress isNil
		ifTrue: [ nbEndAddress := ExternalAddress gcallocate: 4 ].
	nbEndAssociation isNil
		ifTrue: [ nbEndAssociation := Association new ].
	result := self apiGciNbEnd_: nbEndAddress asInteger.
	progress := #(#notReady #progressed #ready #error) at: result + 1.
	progress == #ready
		ifTrue: [ 
			result := (nbEndAddress unsignedLongAt: 1) asGsOopType ].
	^ nbEndAssociation
		key: progress;
		value: result;
		yourself