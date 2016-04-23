tode
todeClient
	^ (TDMinimalClient loginWith: self sessionDescription)
		debugMode: Smalltalk isHeadless not;
		registerService: [ :stonString :aClient | 
			| clientElement |
			clientElement := aClient objectSerializer fromString: stonString.
			clientElement halt.	"poor man's tode debugger"
			1	"windowId" ]
			for: #editStonElement:;
		yourself