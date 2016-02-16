converting
asInteger
	| hdl int |
	hdl := self getHandle.
	int := hdl isInteger
		ifTrue: [ hdl  ]
		ifFalse: [  hdl unsignedLongLongAt: 1  ].
	0 <= int
		ifTrue: [ ^ int ].
	^ int negated + 1