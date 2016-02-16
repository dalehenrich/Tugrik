gci api
gciFetchObjImpl: aGsOopType
	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			^ lib
				apiGciSetSessionId: gciSessionNumber;
				apiGciFetchObjImpl: aGsOopType ]