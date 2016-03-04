converting
asLocalObjectFor: aGciSession
	"at the cost of some round trips, this can be improved"

	^ (self number = 6012
		ifTrue: [ GsGciTransactionBacklog gciSession: aGciSession gci32xErrSType: self ]
		ifFalse: [ GsGciError gciSession: aGciSession gci32xErrSType: self ]) signal