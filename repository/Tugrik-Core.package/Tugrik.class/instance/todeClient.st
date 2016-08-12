tode
todeClient
	^ todeClient
		ifNil: [ todeClient := (TDMinimalClient loginWith: self sessionDescription)
				debugMode: true;
				interactive: false;
				yourself.
			self registerTodeEventsFor: todeClient gemTrace: false.
			"Start sessions with tODE autoCommit set to false"
			todeClient session send: #autoCommit: to: todeClient todeServerOopType withArgs: {false}.
			todeClient session executeString: 'System commit'.
			todeClient ]