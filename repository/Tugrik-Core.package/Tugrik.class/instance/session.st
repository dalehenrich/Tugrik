accessing
session
	todeClient ifNil: [ ^ nil ].
	^ self todeClient session