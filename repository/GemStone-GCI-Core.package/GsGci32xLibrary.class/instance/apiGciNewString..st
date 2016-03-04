API
apiGciNewString: aByteString
"/* =============================================================================
 * GciNewString function
 *   Create a new String object from a C character string.
 *
 * Input Arguments:
 *   cString    Pointer to a character string.
 *
 * Return Value:
 *   The OOP of the newly created object.
 *==============================================================================
 */
  EXTERN_GCI_DEC(OopType)
GciNewString(const char *cString);
"
	<apicall: GsOopType 'GciNewString' (char*) >
	^self externalCallFailed