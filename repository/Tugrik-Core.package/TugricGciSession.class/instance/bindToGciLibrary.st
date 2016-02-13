private
bindToGciLibrary
	| libraryClass library libName ext |
	libraryClass := Gci32xLibrary withAllSubclasses
		detect: [ :each | each isClassForVersion: sessionDescription gemstoneVersion ].
	libName := sessionDescription gciLibraryName.
	ext := sessionDescription gciLibraryExtension.
	(libName endsWith: ext)
		ifFalse: [ libName := libName , ext ].
	library := libraryClass libraryNamed: libName.
	library apiGciInit.
	gciLibraryVersion := library apiGciVersion.
	(gciLibraryVersion beginsWith: sessionDescription gemstoneVersion)
		ifFalse: [ 
			"All Tugric sessions must be using the same GemStone version - for now"
			self
				error:
					'Mismatched GemStone version. library version: ' , gciLibraryVersion printString , ' sessionDescription version: '
						, sessionDescription gemstoneVersion printString ].
	^ library