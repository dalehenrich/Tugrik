accessing
newMachineIdentifier
	"calculate a 3-byte identifier based on the local hostname"
	^ ((MD5 hashMessage: NetNameResolver localHostName) first: 3) asInteger