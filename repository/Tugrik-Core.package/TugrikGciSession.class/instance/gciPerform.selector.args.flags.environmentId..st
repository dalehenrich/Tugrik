gci api
gciPerform: receiver selector: selector args: args flags: flags environmentId: environmentId
	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			| result |
			lib
				apiGciSetSessionId: gciSessionNumber.
				
				result := lib
				apiGciPerformNoDebug_: receiver
					a: selector
					a: args
					a: args size
					a: flags
					a: environmentId.
			^ result = 20
				ifTrue: [ nil asGsOopType: self ]
				ifFalse: [ result asGsOopType: self ] ]