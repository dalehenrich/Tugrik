API
apiGciNewSymbol: aByteSymbol
"/* =============================================================================
 * GciNewSymbol function
 *   Create a new Symbol object from a C character string.
 *
 * Input Arguments:
 *   cString    Pointer to a character string.
 *
 * Return Value:
 *   The OOP of the newly created object.
 *==============================================================================
 */
  EXTERN_GCI_DEC(OopType)
GciNewSymbol(const char *cString);
"
	<apicall: GsOopType 'GciNewSymbol' (char*) >
	^self externalCallFailed