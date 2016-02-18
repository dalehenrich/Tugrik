private
asLocalSpecialObj
	| number classNumber |
	self = self oopNil
		ifTrue: [ ^ nil ].
	number := self getHandle.
	(number bitAnd: 2r111) = 2r010
		ifTrue: [ 
			"SmallInteger"
			^ number <= self oopMaxSmallInteger getHandle
				ifTrue: [ number >> 3 ]
				ifFalse: [ (number >> 3) - ((self oopMaxSmallInteger getHandle >> 2) + 2) ] ].
	(number bitAnd: 2r111) = 2r110
		ifTrue: [ 
			"SmallDouble"
			^ self asLocalFloatObj: number ].
	(number bitAnd: 2r111) = 2r100
		ifFalse: [ 
			"illegal tag"
			self error: 'Unknown object tag: ' , (number bitAnd: 2r111) printString ].	
  "true,false, nil, Char"
	classNumber := number >> 3 bitAnd: 2r11111.
	number := number >> 8.
	classNumber = 1
		ifTrue: [ ^ number = 1 ].	"Boolean"
	classNumber = 2
		ifTrue: [ ^ nil ].	"UndefinedObject"
	classNumber = 3
		ifTrue: [ ^ Character value: number ].	"Character"
	self error