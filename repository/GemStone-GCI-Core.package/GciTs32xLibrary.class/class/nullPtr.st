accessing
nullPtr
	NullPtr ifNil: [ NullPtr := ExternalAddress new beNull asByteArrayPointer ].
	^ NullPtr