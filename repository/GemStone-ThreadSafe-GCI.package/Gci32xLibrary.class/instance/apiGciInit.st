API
apiGciInit
"/* =============================================================================
 * GciInit function
 *   Initialize the GemStone C Interface.
 *
 * Return Value:
 *   The function GciInit returns TRUE or FALSE to indicate successful or
 *   unsuccessful initialization of the GCI interface.
 *==============================================================================
 */
  EXTERN_GCI_DEC(BoolType)
GciInit(void);
"
	<apicall: bool 'GciInit' (void) >
	^self externalCallFailed