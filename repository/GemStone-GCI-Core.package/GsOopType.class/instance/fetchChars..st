private
fetchChars: aTugricGciSession
	| string size result |
	size := aTugricGciSession gciLibrary apiGciFetchSize_: self.
	string := String new: size + 1.
	result := aTugricGciSession gciLibrary
		apiGciFetchChars_: self
		a: 1
		a: string
		a: string size.
	result ~= size
		ifTrue: [ self error: 'GciFetchChars() failed' ].
	^ string copyFrom: 1 to: size