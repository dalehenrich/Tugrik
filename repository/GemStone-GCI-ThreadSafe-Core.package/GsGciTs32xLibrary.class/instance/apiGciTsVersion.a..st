API
apiGciTsVersion: buf a: bufSize
"EXTERN_GCI_DEC(uint) GciTsVersion(char *buf, size_t bufSize);
/* Can be called without a session,
   Function result is an integer indicating the
   GemStone/S product to which the client library
   belongs. Currently-defined integers are:
     1  GemStone/S
     2  GemStone/S 2G
     3  GemStone/S 64   (GciTsVersion returns this)

   Returned in buf is a NUL terminated string that describes the GCI version.
   bufSize needs to be 128 or larger.
   Version fields in the string will be delimited by a '.'.
   The first field is the major version number,
   the second field is the minor version number.
   Any number of additional fields may exist. These
   additional fields will describe the exact release of the GCI.
   For additional version information use the methods in class System
   in the 'Version Management' category.
*/
"
	<apicall: ulong 'GciTsVersion' (void* ulonglong  ) >
	^self externalCallFailed