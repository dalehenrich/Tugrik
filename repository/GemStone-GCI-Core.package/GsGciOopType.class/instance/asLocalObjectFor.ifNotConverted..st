converting
asLocalObjectFor: aTugricGciSession ifNotConverted: notConvertedBlock
	"we can create local objects for specials and byte objects"

	aTugricGciSession gciLibrary
		critical: [ :lib | 
			| type |
			lib apiGciSetSessionId: aTugricGciSession gciSessionNumber.
			type := lib apiGciFetchObjImpl: self.
			type = 1
				ifTrue: [ ^ self asLocalByteObj: aTugricGciSession ].
			type = 3
				ifTrue: [ ^ self asLocalSpecialObj ].
			^ notConvertedBlock cull: self ]