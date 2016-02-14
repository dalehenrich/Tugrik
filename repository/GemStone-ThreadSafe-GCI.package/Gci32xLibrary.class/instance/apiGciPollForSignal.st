API
apiGciPollForSignal
"/* ==========================================================================
 * GciPollForSignal
 *
 *  Polls the database to see if any of the following errors are pending,
 *  without the cost of starting Smalltalk execution.  These 3 errors
 *  are only seen by this function, if the corresponding method in class
 *  System has been used to enable the receipt of Smalltalk signals for
 *  that error.
 *
 *    error                            method to enable receipt of error
 *      RT_ERR_SIGNAL_ABORT              enableSignaledAbortError
 *      RT_ERR_SIGNAL_COMMIT             enableSignaledObjectsError
 *      RT_ERR_SIGNAL_GEMSTONE_SESSION   enableSignaledGemStoneSessionError
 *
 *  This function is useful to test for these 3 errors, if
 *  GciEnableSignaledErrors is not used to enable checking on every GCI call.
 *  Only those errors previously enabled by appropriate methods in class
 *  System will be checked.
 *
 *  In addition, this function will detect any other asynchronous errors
 *  whenever they occur, including:
 *      ABORT_ERR_LOST_OT_ROOT, GS_ERR_SHRPC_CONNECTION_FAILURE,
 *      GS_ERR_STN_NET_LOST, GS_ERR_STN_SHUTDOWN, GS_ERR_SESSION_SHUTDOWN
 *
 *  Function result: TRUE if an error exists; in that case, the
 *    error is available via GciErr, or the error will have caused a
 *    longjmp if a jmp_buf was active for the current session.
 * ==========================================================================
 */
  GCI_ALIGN_STACK EXTERN_GCI_DEC(BoolType)
GciPollForSignal(void);
"
	<apicall: bool 'GciPollForSignal' (void) >
	^self externalCallFailed