gci api
fetchObjImpl: aGsOopType
	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			^ lib
				apiGciSetSessionId: gciSessionNumber;
				apiGciFetchObjImpl: aGsOopType ]