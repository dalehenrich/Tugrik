converting
asLocalObjectFor: aTugrikGciSession
	"at the cost of some round trips, this can be improved"

	^ (self number = 6012
		ifTrue: [ GsGciTransactionBacklog tugrikGciSession: aTugrikGciSession gci32xErrSType: self ]
		ifFalse: [ GsGciError tugrikGciSession: aTugrikGciSession gci32xErrSType: self ]) signal