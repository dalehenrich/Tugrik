operation API
performOperationOnServer: selector withArgs: args
	| client |
	session
		ifNil: [ client := self todeClient.
			session := client session ].
	[ RemotePerformStringBuffer ifNil: [ RemotePerformStringBuffer := String new: 50000 ].
	stream := WriteStream on: String new.
	stream
		nextPutAll: self tugrikDbServerClassName;
		nextPutAll: ' perform: ';
		nextPutAll: selector printString;
		nextPutAll: ' withArguments: (STON fromString: ';
		nextPutAll: (STON toString: args) printString;
		nextPutAll: ')'.
	session executeStringFetchBytes: stream contents rawBuffer: RemotePerformStringBuffer.
	^ STON fromString: RemotePerformStringBuffer ]
		ensure: [ false
				ifTrue: [ session logout.
					session := nil ] ]