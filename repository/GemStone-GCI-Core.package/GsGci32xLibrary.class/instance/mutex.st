critical section
mutex
	mutex ifNil: [ mutex := Mutex new ].
	^ mutex