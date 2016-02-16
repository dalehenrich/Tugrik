gci api - non-blocking
gciNbEnd_OnNotReady: notReadyBlock onReady: readyBlock onError: errorBlock
	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			| nbEndAddress result |
			"
			  GCI_RESULT_NOT_READY = 0,     /* nothing happened */
           GCI_RESULT_PROGRESSED = 1,    /* a packet was received */
           GCI_RESULT_READY = 2,         /* your result is now ready */
           GCI_RESULT_HAS_ERROR = 3      /* result is ready with error */"
			nbEndAddress := ExternalAddress gcallocate: 4.
			result := lib
				apiGciSetSessionId: gciSessionNumber;
				apiGciNbEnd_: nbEndAddress asInteger.
			^ (result = 0 or: [ result = 1 ])
				ifTrue: [ 
					"GCI_RESULT_NOT_READY or GCI_RESULT_PROGRESSED"
					notReadyBlock value: result = 1 ]
				ifFalse: [ 
					result = 2
						ifTrue: [ 
							"GCI_RESULT_READY"
							readyBlock value: ((nbEndAddress unsignedLongAt: 1) asGsOopType: self) ]
						ifFalse: [ 
							"GCI_RESULT_HAS_ERROR"
							"call #gciErr to get error information"
							errorBlock value: (nil asGsOopType: self) ] ] ]