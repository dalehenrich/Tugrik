private
bindToGciLibrary
	| libraryClass library libName ext versionBuf gsProdId |
	libraryClass := GsGciTs32xLibrary withAllSubclasses
		detect: [ :each | each isClassForVersion: sessionDescription gemstoneVersion ].
	libName := sessionDescription gciTsLibraryName.
	ext := self gciLibraryExtension.
	(libName endsWith: ext)
		ifFalse: [ libName := libName , ext ].
	library := libraryClass libraryNamed: libName.
	versionBuf := String new: 128.
	gsProdId := library apiGciTsVersion: versionBuf a: versionBuf size.
	gsProdId ~= 3
		ifTrue: [ self error: 'Not connecting to a library belonging to GemStone/S 64' ].
	(versionBuf beginsWith: sessionDescription gemstoneVersion)
		ifFalse: [ 
			"All Tugric sessions must be using the same GemStone version - for now"
			self
				error:
					'Mismatched GemStone version. library version: ' , gciLibraryVersion printString , ' sessionDescription version: '
						, sessionDescription gemstoneVersion printString ].
	^ library