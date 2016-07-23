accessing
defaultGciSessionDescription
	"If there is no other default use the defaultSessionDescriptionPath to create one"

	^ DefaultGciSessionDescription
		ifNil: [ DefaultGciSessionDescription := GsGciSessionDescription
				importFrom: self defaultGciSessionDescriptionFileReference ]