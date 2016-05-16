tests
testWhere
	"Tugrik where clause evaluates Smalltalk select block expression - not javascript"

	| selected |
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
	selected := collection detect: [ :each | each where: '[:each | each key1 = ''value1'']' ].
	self assert: (selected at: 'key1') equals: 'value1'