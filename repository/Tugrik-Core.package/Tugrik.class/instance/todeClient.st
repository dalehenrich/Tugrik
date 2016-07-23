tode
todeClient
	^ todeClient
		ifNil: [ todeClient := (TDMinimalClient loginWith: self sessionDescription)
				debugMode: true;
				interactive: false;
				yourself.
			self registerTodeEventsFor: todeClient gemTrace: false.
			todeClient ]