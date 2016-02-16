API - non-blocking
apiGciNbAbort
"/* =============================================================================
 * GciNbAbort function
 *   Abort the current transaction (nonblocking).
 *==============================================================================
 */
  EXTERN_GCI_DEC(void)
GciNbAbort(void);
"
	<apicall: void 'GciNbAbort' (void) >
	^self externalCallFailed