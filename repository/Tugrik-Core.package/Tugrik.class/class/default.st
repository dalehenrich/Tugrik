accessing
default
	"If there is no other default use the defaultSessionDescription to create one"

	^ Default ifNil: [ Default := self new sessionDescription: self defaultGciSessionDescription ]