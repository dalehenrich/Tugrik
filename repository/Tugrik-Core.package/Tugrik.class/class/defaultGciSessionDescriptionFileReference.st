accessing
defaultGciSessionDescriptionFileReference
	"If there is no other default use a session description named travis in $GS_HOME/sys/local/sessions"

	^ DefaultGciSessionDescriptionFileReference
		ifNil: [ 
			| gs_home sessName |
			gs_home := (Smalltalk os environment
				at: 'GS_HOME'
				ifAbsent: [ ^ self error: 'GsDevKit_home has not been installed correctly' ]) asFileReference.
			sessName := 'travis'.
			Smalltalk at: #SCIGemStoneServerConfigSpec ifPresent: [ :cls | sessName := cls defaultSessionName ].
			DefaultGciSessionDescriptionFileReference := gs_home / 'sys' / 'local' / 'sessions' / sessName ]