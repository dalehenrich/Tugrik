accessing
gciLibrary
	gciLibrary ifNil: [ gciLibrary := self bindToGciLibrary ].
	^ gciLibrary