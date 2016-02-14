converting
asLocalObjectFor: aSession
	^ self asLocalObjectFor: aSession ifNotConverted: [ self error: 'Conversion to local object failed' ]