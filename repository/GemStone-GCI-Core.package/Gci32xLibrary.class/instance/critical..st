critical section
critical: aBlock
	^ self mutex critical: [ aBlock value: self ]