operation API
performOperationOnServer: selector withArgs: args
	| client |
	session
		ifNil: [ client := self todeClient.
			session := client session ].
	[ | resultString buffer |
	buffer := String new: 50000.
	stream := WriteStream on: String new.
	stream
		nextPutAll: self tugrikDbServerClassName;
		nextPutAll: ' perform: ';
		nextPutAll: selector printString;
		nextPutAll: ' withArguments: (STON fromString: ';
		nextPutAll: (STON toString: args) printString;
		nextPutAll: ')'.
	resultString := session executeStringFetchBytes: stream contents resultBuffer: buffer.
	^ STON fromString: resultString ]
		ensure: [ false
				ifTrue: [ session logout.
					session := nil ] ]