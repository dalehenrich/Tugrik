field definition
fields
	"self compileFields"
	"self byteSize"

	false
		ifTrue: [
			"use for getting methods defined correctly in referencing data structures" 
			^ #(nil 'void*') ].
	^ #(nil 'ulonglong')