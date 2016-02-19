private
asLocalByteObj: aTugricGciSession
	| class |
	class := (aTugricGciSession gciLibrary apiGciFetchClass: self) asGsOopType: aTugricGciSession.
	class = self oopClassString
		ifTrue: [ ^ self fetchChars: aTugricGciSession ].
	class = self oopClassUnicode7
		ifTrue: [ ^ self fetchChars: aTugricGciSession ].
	class = self oopClassSymbol
		ifTrue: [ ^ (self fetchChars: aTugricGciSession) asSymbol ].
	class = self oopClassDoubleByteString
		ifTrue: [ ^ self fetchDoubleByteChars: aTugricGciSession ].
	class = self oopClassUnicode16
		ifTrue: [ ^ self fetchDoubleByteChars: aTugricGciSession ].
	class = self oopClassDoubleByteSymbol
		ifTrue: [ ^ (self fetchDoubleByteChars: aTugricGciSession) asSymbol ].
	class = self oopClassQuadByteString
		ifTrue: [ ^ self fetchQuadByteChars: aTugricGciSession ].
	class = self oopClassUnicode32
		ifTrue: [ ^ self fetchQuadByteChars: aTugricGciSession ].
	^ self fetchBytes: aTugricGciSession