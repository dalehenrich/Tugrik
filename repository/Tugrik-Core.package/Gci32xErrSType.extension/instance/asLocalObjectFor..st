*Tugrik-Core
asLocalObjectFor: aTugrikGciSession
	"at the cost of some round trips, this can be improved"

	^ (self number = 6012
		ifTrue: [ TugrikGsTransactionBacklog tugrikGciSession: aTugrikGciSession gci32xErrSType: self ]
		ifFalse: [ TugrikGsError tugrikGciSession: aTugrikGciSession gci32xErrSType: self ]) signal