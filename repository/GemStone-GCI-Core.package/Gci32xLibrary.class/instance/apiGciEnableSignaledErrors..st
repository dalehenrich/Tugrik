API
apiGciEnableSignaledErrors: newState
"/* ==========================================================================
 * GciEnableSignaledErrors
 *
 *   The default state of any invocation of the Gci is that the GCI
 *   will not respond to stone to gem signals for the following errors:
 *      RT_ERR_SIGNAL_ABORT,
 *      RT_ERR_SIGNAL_COMMIT, RT_ERR_SIGNAL_GEMSTONE_SESSION .
 *   This default state exists after successful GciInit, and  at the
 *   entry to any user action; in this state, the signalled errors are
 *   delivered only to executing Smalltalk methods, and then only if
 *   such delivery has been enabled via appropriate methods in class System.
 *
 *   If this function is called with the argument TRUE,  then this GCI will
 *   check for the listed errors at the start of each GCI call that performs
 *   database access.  Note that the errors will only be delivered to the
 *   GCI if they are enabled via appropriate methods in class System .
 *   This function merely enables the GCI to have immediate visibility of
 *   errors that have been enabled via executing the appropriate Smalltalk
 *   methods.  The errors will be delivered via GciErr or via a longjmp if
 *   a jmp_buf was active for the current session.
 *
 *   Checking for the signalled errors incurs no extra cost at runtime,
 *   since the check is optimized into the check for valid session.
 *
 *   Note that the error ABORT_ERR_LOST_OT_ROOT can never be suppressed.
 *
 *   This function may not be called prior to GciLogin
 *
 *   Function result : TRUE if signalled errors previously enabled.
 * ==========================================================================
 */
  EXTERN_GCI_DEC(BoolType)
GciEnableSignaledErrors(BoolType newState);
"
	<apicall: bool 'GciEnableSignaledErrors' (bool) >
	^self externalCallFailed