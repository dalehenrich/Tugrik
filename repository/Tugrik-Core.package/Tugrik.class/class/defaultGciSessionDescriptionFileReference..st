accessing
defaultGciSessionDescriptionFileReference: aGciSessionDescriptionFileReference
	"Ability to set an own default"

	"self defaultGciSessionDescriptionFileReference: (Smalltalk os environment at: 'GS_HOME') asFileReference / 'sys' / 'local' / 'sessions' / 'voyage_330' "

	^ DefaultGciSessionDescriptionFileReference := aGciSessionDescriptionFileReference