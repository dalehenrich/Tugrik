local object creation
createLocalObjectFrom: aGsOopType ifNotConverted: notConvertedBlock
	^ aGsOopType asLocalObjectFor: self gciLibrary sessionId: self gciSessionNumber ifNotConverted: notConvertedBlock