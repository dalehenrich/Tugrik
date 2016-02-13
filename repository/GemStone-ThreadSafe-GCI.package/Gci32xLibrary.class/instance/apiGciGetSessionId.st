API - not thread safe
apiGciGetSessionId
"/* =============================================================================
 * GciGetSessionId function
 *   Find the ID number of the current user session.
 *
 * Return Value:
 *   Returns the session ID currently being used for communication with
 *   GemStone.  Returns GCI_INVALID_SESSION_ID if there is no session ID (that
 *   is, if the application is not logged in).
 *==============================================================================
 */
  GCI_ALIGN_STACK EXTERN_GCI_DEC(GciSessionIdType)
GciGetSessionId(void);
"
	<apicall: long 'GciGetSessionId' (void) >
	^self externalCallFailed