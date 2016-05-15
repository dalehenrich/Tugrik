running
setUp
	root := Tugrik default.
	root open.
	database := root databaseNamed: 'test'.
	collection := database addCollection: 'testCollection'