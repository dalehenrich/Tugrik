*Tugrik-Core
asLocalObjectFor: aTugrikGciSession
	^ (TugrikGsError tugrikGciSession: aTugrikGciSession gci32xErrSType: self) signal