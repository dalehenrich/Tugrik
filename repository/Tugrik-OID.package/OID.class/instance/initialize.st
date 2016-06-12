initialize
initialize
  "initialize value corresponding to the mongo spec. It is a 12-byte value containing:
	* 4-byte timestamp
	* 3-byte session identifier
	* 5-byte counter
"

  value := LargeInteger basicNew: 12.
  value := (value bitOr: DateAndTime secondsSince2001 rounded) bitShift: 24.
  value := (value bitOr: (self class sessionSerialNum bitAnd: 16rFFFFFF))
    bitShift: 40.
  value := value bitOr: self class counterNext