accessing
defaultGciSessionDescriptionFileReference: aGciSessionDescriptionFileReference
	"Ability to set an own default"

	"self defaultGciSessionDescriptionFileReference: nil"

	"self defaultGciSessionDescriptionFileReference: (Smalltalk os environment at: 'GS_HOME') asFileReference / 'sys' / 'local' / 'sessions' / 'Tugrik' "

	^ DefaultGciSessionDescriptionFileReference := aGciSessionDescriptionFileReference