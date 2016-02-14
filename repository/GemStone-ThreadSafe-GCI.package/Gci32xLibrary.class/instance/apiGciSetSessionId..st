API
apiGciSetSessionId: anInteger
"/* =============================================================================
 * GciSetSessionId function
 *   Set an active session to be the current one.
 *
 * Input Arguments:
 *   sessionId  The session ID of an active (logged-in) GemStone session.
 *==============================================================================
 */
  GCI_ALIGN_STACK EXTERN_GCI_DEC(void)
GciSetSessionId(GciSessionIdType sessionId);
"
	<apicall: void 'GciSetSessionId' (long) >
	^self externalCallFailed.
	