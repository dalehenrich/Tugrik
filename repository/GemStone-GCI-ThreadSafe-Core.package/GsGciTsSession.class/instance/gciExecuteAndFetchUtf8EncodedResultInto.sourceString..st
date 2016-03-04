gci api
gciExecuteAndFetchUtf8EncodedResultInto: utf8EncodedResultString sourceString: sourceString
	^ self
		gciExecuteAndFetchResultAsUtf8EncodedString: utf8EncodedResultString
		sourceString: sourceString
		sourceOopType: GsGciOopType oopClassString
		contextOopType: GsGciOopType oopIllegal
		symbolListOopType: GsGciOopType oopNil