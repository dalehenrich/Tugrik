initialization
initialize
	"self initialize"

	Smalltalk addToStartUpList: self.
	self
		defaultGciSessionDescription: nil;
		defaultGciSessionDescriptionFileReference: nil;
		resetSession