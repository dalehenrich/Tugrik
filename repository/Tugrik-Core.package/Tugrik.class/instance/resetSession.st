accessing
resetSession
	"should only be sent during image startup, since the existing client is dropped on floor
		without doing a proper logout."

	todeClient := nil.