accessing
defaultGciSessionDescriptionFileReference
	"If there is no other default use a session description named tugrik in $GS_HOME/sys/local/sessions"

	^ DefaultGciSessionDescriptionFileReference
		ifNil: [ 
			| gs_home |
			gs_home := (Smalltalk os environment
				at: 'GS_HOME'
				ifAbsent: [ ^ self error: 'GsDevKit_home has not been installed correctly' ]) asFileReference.
			DefaultGciSessionDescriptionFileReference := gs_home / 'sys' / 'local' / 'sessions' / 'tugrik' ]