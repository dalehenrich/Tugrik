initialize
initialize
	"initialize value corresponding to the mongo spec. It is a 12-byte value containing:
	* 4-byte timestamp
	* 3-byte machine identifier
	* 2-byte process identifier
	* 3-byte counter"
	value := LargePositiveInteger new: 12.
	value := (value bitOr: DateAndTime now asSeconds) bitShift: 24.
	value := (value bitOr: self class machineIdentifier) bitShift: 16.
	value := (value bitOr: ((Processor activeProcess hash bitShift: -16) bitAnd: 16rFFFF)) bitShift: 24.
	value := (value bitOr: self class counterNext)