gci api - non-blocking
nbEnd_OnNotReady: notReadyBlock onProgress: progressBlock onReady: readyBlock onError: errorBlock
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
			^ result = 0
				ifTrue: [ 
					"GCI_RESULT_NOT_READY"
					notReadyBlock value ]
				ifFalse: [ 
					result = 1
						ifTrue: [ 
							"GCI_RESULT_PROGRESSED"
							progressBlock value ]
						ifFalse: [ 
							result = 2
								ifTrue: [ 
									"GCI_RESULT_READY"
									(nbEndAddress unsignedLongAt: 1) asGsOopType ]
								ifFalse: [ 
									"GCI_RESULT_HAS_ERROR"
									"call #gciErr to get error information"
									errorBlock value ] ] ] ]