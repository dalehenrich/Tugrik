API - non-blocking
apiGciNbBegin
"/* =============================================================================
 * GciNbBegin function
 *   Begin a new transaction (nonblocking).
 *==============================================================================
 */
  EXTERN_GCI_DEC(void)
GciNbBegin(void);
"
	<apicall: void 'GciNbBegin' (void) >
	^self externalCallFailed