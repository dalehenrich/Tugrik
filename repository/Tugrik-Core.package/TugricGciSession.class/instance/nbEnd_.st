gci api - non-blocking
nbEnd_
	"answer an association whose key is one of (#notReady #progressed #ready #error)
	 and whose value is the oopNumber for the result when key is #ready."

	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			^ lib
				apiGciSetSessionId: gciSessionNumber;
				nbEnd_ ]