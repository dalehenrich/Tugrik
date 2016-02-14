API
apiGciVersion
"/* GciVersion
 * Will return a 0 terminated string that describes the GCI version.
 * Version fields in the string will be delimited by a '.'.
 * The first field is the major version number,
 * the second field is the minor version number.
 * Any number of additional fields may exist. These
 * additional fields will describe the exact release of the GCI.
 * For additional version information use the methods in class System
 * in the 'Version Management' category.
 */
  EXTERN_GCI_DEC(const char*)
GciVersion(void);
"
	<apicall: char* 'GciVersion' (void) >
	^self externalCallFailed