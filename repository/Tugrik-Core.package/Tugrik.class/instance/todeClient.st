tode
todeClient
	^ (TDMinimalClient loginWith: self sessionDescription)
		debugMode: Smalltalk isHeadless not;
		registerService: [ :stonString :aClient | 
			| clientElement |
			clientElement := aClient objectSerializer fromString: stonString.
			clientElement topez: aClient.
			clientElement editorWindowLocation == #debugger
				ifTrue: [ TDMinimalDebugger openOn: clientElement ]
				ifFalse: [ self halt ].
			1	"windowId" ]
			for: #editStonElement:;
		yourself