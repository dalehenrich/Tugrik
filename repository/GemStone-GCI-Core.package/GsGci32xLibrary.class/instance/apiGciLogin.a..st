API
apiGciLogin: userName a: password
"/* =============================================================================
 * GciLogin function
 *   Start a user session.
 *
 * Input Arguments:
 *   gemstoneUsername   The user's GemStone user name (a null-terminated
 *                      string).
 *   gemstonePassword   The user's GemStone password (a null-terminated string).
 *
 *  Function result is TRUE if GciLogin is successful.
 *  function result is FALSE if GciErr() should be called to get the
 *  error or warning message.
 *  If the result is FALSE and GciGetSessionId() returns a valid session
 *  then the message is a warning. The login will have completed ok.
 *  The only warning currently defined is RT_ERR_WARNING_PASSWD_EXPIRE.
 * =======================================================================
 */
  EXTERN_GCI_DEC(BoolType)
GciLogin(const char gemstoneUsername[], const char gemstonePassword[]);
"
	<apicall: bool 'GciLogin' (char* char*) >
	^self externalCallFailed