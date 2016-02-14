API
apiGciLogout
"/* =============================================================================
 * GciLogout function
 *   End the current user session.
 *==============================================================================
 */
  GCI_ALIGN_STACK EXTERN_GCI_DEC(void)
GciLogout(void);
"
	<apicall: void 'GciLogout' (void) >
	^self externalCallFailed