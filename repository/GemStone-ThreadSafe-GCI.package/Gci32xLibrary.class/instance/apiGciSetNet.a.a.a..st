API - not thread safe
apiGciSetNet: stoneName a: hostUserID a: hostPassword a: gemService
"/* =============================================================================
 * GciSetNet function
 *   Set network parameters for connecting the user to the Gem and Stone
 *   processes.
 *
 * Input Arguments:
 *   StoneName  Network resource string for the database monitor process.
 *   HostUserId Login name.
 *   HostPassword
 *              Password of the user.
 *   GemService Network resource string for the GemStone service.
 *   If GemService is an empty string,  "",  then
 *     if (GciIsRemote() == FALSE && GciInUserAction == FALSE)
 *        default service is ""gcilnkobj""
 *     else
 *        default service is ""gemnetobject""
 *==============================================================================
 */
  GCI_ALIGN_STACK EXTERN_GCI_DEC(void)
GciSetNet(
  const char StoneName[],
  const char HostUserId[],
  const char HostPassword[],
  const char GemService[]
  );
"
	<apicall: void 'GciSetNet' (char* char* char* char*) >
	^self externalCallFailed