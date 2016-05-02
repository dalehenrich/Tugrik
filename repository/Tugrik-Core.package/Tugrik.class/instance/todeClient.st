tode
todeClient
	| client |
	client := (TDMinimalClient loginWith: self sessionDescription)
		debugMode: Smalltalk isHeadless not;
		interactive: false;
		yourself.
	self registerTodeEventsFor: client gemTrace: false.
	^client