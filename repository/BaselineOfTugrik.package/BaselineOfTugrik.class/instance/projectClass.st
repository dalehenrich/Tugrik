accessing
projectClass
	"bullet proof until the day when MetacelloCypressBaselineProject included in standard Metacello release"

	^ Smalltalk at: #MetacelloCypressBaselineProject ifAbsent: [ super projectClass ]