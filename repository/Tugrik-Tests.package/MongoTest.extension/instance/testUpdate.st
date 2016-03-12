*Tugrik-Tests
testUpdate
	| selected oldObj newObj |
	collection
		add:
			(Dictionary new
				at: 'key1' put: 'value1';
				yourself).
	collection
		add:
			(Dictionary new
				at: 'key2' put: 'value2';
				yourself).
	selected := collection select: {('key1' -> 'value1')} asDictionary.
	self assert: selected size equals: 1.
	oldObj := selected first.
	newObj := (Dictionary new
				at: 'key1' put: 'another1';
				yourself).
	collection replace: selected first with: newObj.
	selected := collection select: {('key1' -> 'another1')} asDictionary.
	self assert: selected size equals: 1.
