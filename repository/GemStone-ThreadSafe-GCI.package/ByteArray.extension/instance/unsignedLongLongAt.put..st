*GemStone-ThreadSafe-GCI
unsignedLongLongAt: byteOffset put: value
	"Store a 64bit signed integer starting at the given byte offset"
	^self integerAt: byteOffset put: value size: 8 signed: false