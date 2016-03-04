gci api
gciExecuteAndFetchUtf8EncodedResultInto: utf8EncodedResultString sourceString: sourceString
	^ self
		gciExecuteAndFetchResultAsUtf8EncodedString: utf8EncodedResultString
		sourceString: sourceString
		sourceOopType: GsOopType oopClassString
		contextOopType: GsOopType oopIllegal
		symbolListOopType: GsOopType oopNil