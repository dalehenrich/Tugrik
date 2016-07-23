operation API
performOperationOnServer: selector withArgs: args
	self open.	"open if not already open"
	RemotePerformStringBuffer ifNil: [ RemotePerformStringBuffer := String new: 50000 ].
	stream := WriteStream on: String new.
	stream
		nextPutAll: self tugrikDbServerClassName;
		nextPutAll: ' perform: ';
		nextPutAll: selector printString;
		nextPutAll: ' withArguments: (STON fromString: ';
		nextPutAll: (STON toString: args) printString;
		nextPutAll: ')'.
	session executeStringFetchBytes: stream contents rawBuffer: RemotePerformStringBuffer.
	^ STON fromString: RemotePerformStringBuffer