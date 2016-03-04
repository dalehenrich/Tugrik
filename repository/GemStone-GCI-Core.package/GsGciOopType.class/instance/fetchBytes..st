private
fetchBytes: aTugricGciSession
	| bytes size result |
	size := aTugricGciSession gciLibrary apiGciFetchSize_: self.
	bytes := ByteArray new: size.
	result := aTugricGciSession gciLibrary
		apiGciFetchBytes_: self
		a: 1
		a: bytes
		a: bytes size.
	result ~= size
		ifTrue: [ self error: 'GciFetchBytes() failed' ].
	^ bytes