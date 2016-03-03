gci api
gciPerform: receiverOopType selector: selector args: arrayOfArgOopTypes flags: flags environmentId: environmentId
	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			| result |
			lib apiGciSetSessionId: gciSessionNumber.
			result := lib
				apiGciPerformNoDebug_: receiverOopType
				a: selector
				a: arrayOfArgOopTypes
				a: arrayOfArgOopTypes size
				a: flags
				a: environmentId.
			^ result = 20
				ifTrue: [ nil gciResultToGsOopType: self ]
				ifFalse: [ result gciResultToGsOopType: self ] ]