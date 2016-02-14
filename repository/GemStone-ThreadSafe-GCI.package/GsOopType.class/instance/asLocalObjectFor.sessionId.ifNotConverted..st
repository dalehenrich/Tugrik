converting
asLocalObjectFor: aGciLibrary sessionId: sessionId ifNotConverted: notConvertedBlock
	"we can create local objects for specials and byte objects"

	aGciLibrary
		critical: [ :lib | 
			| type |
			lib apiGciSetSessionId: sessionId.
			type := lib apiGciFetchObjImpl: self.
			type = 1
				ifTrue: [ ^ self asLocalByteObj ].
			type = 3
				ifTrue: [ ^ self asLocalSpecialObj ].
			notConvertedBlock value: self ]