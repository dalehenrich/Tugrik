instance creation
sessionDescription: aTDSessionDescription dbServerClassName: dbServerClassName
	"Return a new instance using the host/port/user information in aTDSessionDescription"

	^ self new
		sessionDescription: aTDSessionDescription;
		tugrikDbServerClassName: dbServerClassName;
		yourself