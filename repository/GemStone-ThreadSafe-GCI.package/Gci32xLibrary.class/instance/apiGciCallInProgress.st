API
apiGciCallInProgress
"/* =============================================================================
 * GciCallInProgress function
 *   Determine if a GCI call is currently in progress.
 *
 *   Intended to be used within interrrupt handlers to determine whether
 *   a Gci call is currently in progress.
 *   May be called any time after GciInit has been called.
 *
 *   If the process is currently executing within a user action, and
 *   the user action code is not within a re-entrant Gci call, this
 *   function will return FALSE.  Note that GciInUserAction is available
 *   to determine if you are within a user action.
 *
 * Return Value:
 *   This function returns TRUE if a GCI call is in progress, and FALSE
 *   otherwise.
 *==============================================================================
 */
  EXTERN_GCI_DEC(BoolType)
GciCallInProgress(void);
"
	<apicall: bool 'GciCallInProgress' () >
	^self externalCallFailed