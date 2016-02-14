*GemStone-ThreadSafe-GCI
unsignedLongLongAt: byteOffset
	"Return a 64bit unsigned integer starting at the given byte offset"

	^ (self integerAt: byteOffset size: 4 signed: false) << 32
		bitAnd: (self integerAt: byteOffset + 4 size: 4 signed: false)