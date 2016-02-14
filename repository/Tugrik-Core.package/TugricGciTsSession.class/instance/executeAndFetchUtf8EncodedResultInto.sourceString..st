gci api
executeAndFetchUtf8EncodedResultInto: utf8EncodedResultString sourceString: sourceString
	^ self
		executeAndFetchResultAsUtf8EncodedString: utf8EncodedResultString
		sourceString: sourceString
		sourceOopType: GsOopType oopClassString
		contextOopType: GsOopType oopIllegal
		symbolListOopType: GsOopType oopNil