accessing
osPasswordIsEncrypted
	osPasswordIsEncrypted ifNil: [ osPasswordIsEncrypted := false ].
	^ osPasswordIsEncrypted