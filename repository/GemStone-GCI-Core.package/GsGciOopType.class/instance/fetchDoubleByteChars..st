private
fetchDoubleByteChars: aTugricGciSession
	| bytes |
	bytes := self fetchBytes: aTugricGciSession.
	^ WideString
		streamContents: [ :s | 
			1 to: bytes size by: 2 do: [ :i | 
				| codePoint |
				codePoint := (bytes at: i) bitOr: (bytes at: i + 1) << 8.
				s nextPut: (Character value: codePoint) ] ]