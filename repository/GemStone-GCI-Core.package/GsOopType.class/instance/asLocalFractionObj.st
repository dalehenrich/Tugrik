private
asLocalFractionObj
	"SmallFraction"

	| number denom numer |
	number := self getHandle.
	number := number <= self oopMaxSmallInteger getHandle
		ifTrue: [ number >> 3 ]
		ifFalse: [ 
			"signed twos-complement"
			(number >> 3) - ((self oopMaxSmallInteger getHandle >> 2) + 2) ].
	number := number >> 5.	"GCI_OOP_SPECIAL_VALUE_SHIFT - 3"
	denom := number bitAnd: 16r7ffffff.	"denom_mask"
	numer := number >> 27.	"num_denom_bits"
	^ numer / denom