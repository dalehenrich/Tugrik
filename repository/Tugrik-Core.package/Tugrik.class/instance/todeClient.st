tode
todeClient
	| client |
	client := (TDMinimalClient loginWith: self sessionDescription)
		debugMode: true;
		interactive: false;
		yourself.
	self registerTodeEventsFor: client gemTrace: false.
	^client