accessing
defaultGciSessionDescriptionFileReference
	"If there is no other default use a session description named travis in $GS_HOME/sys/local/sessions"

	^ DefaultGciSessionDescriptionFileReference
		ifNil: [ DefaultGciSessionDescriptionFileReference := GsDevKit_home / 'sys' / 'local' / 'sessions'
				/ SCIGemStoneServerConfigSpec defaultSessionName ]