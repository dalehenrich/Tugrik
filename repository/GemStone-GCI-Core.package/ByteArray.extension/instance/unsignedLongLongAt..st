*GemStone-GCI-Core
unsignedLongLongAt: byteOffset
	"Return a 64bit unsigned integer starting at the given byte offset"

	^ self nbUInt64AtOffset: byteOffset - 1