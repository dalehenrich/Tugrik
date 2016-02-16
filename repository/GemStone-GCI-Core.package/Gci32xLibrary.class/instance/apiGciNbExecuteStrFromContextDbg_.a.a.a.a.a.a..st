API - non-blocking
apiGciNbExecuteStrFromContextDbg_: source a: sourceSize a: sourceClassOopType a: contextObjectOopType a: symbolListOopType a: flags a: environmentId
"/* =============================================================================
 * GciNbExecuteStrFromContext function
 *   Execute a Smalltalk expression contained in a C string as if it were a
 *   message sent to an object (nonblocking).
 *
 * For more information, see GciExecuteStrFromContext or the GCI manual.
 *==============================================================================
 */

  EXTERN_GCI_DEC(void)
GciNbExecuteStrFromContextDbg_(
  const char source[], int64 sourceSize, OopType sourceClass,
  OopType contextObject, OopType symbolList ,
  int flags /* same as flags to GciPerformNoDebug */, ushort environmentId );
"
	<apicall: GsOopType 'GciNbExecuteStrFromContextDbg_' (char* ulonglong GsOopType GsOopType GsOopType ulonglong ushort) >
	^self externalCallFailed
"enum { 
  GCI_PERFORM_FLAG_ENABLE_DEBUG = 1,  
   /* make like GciPerform() with respect to debugging. default is debugger is
    * disabled until GciPerformNoDebug returns */

  GCI_PERFORM_FLAG_DISABLE_ASYNC_EVENTS = 2  ,
   /* disable async events.  Used for GSI to be able to execute an exception
    * block or method to service RT_ERR_SIGNAL_ABORT, 
    *  RT_ERR_SIGNAL_GEMSTONE_SESSION, or ABORT_ERR_LOST_OT_ROOT */

  GCI_PERFORM_FLAG_SINGLE_STEP = 4, 
   /* place a single step break-point at the start of the method to be
    * performed, and then execute to hit that breakpoint.
    * if true, also implies GCI_PERFORM_FLAG_INTERPRETED
    */

  GCI_PERFORM_MAP_SYMBOLS = 8, // obsolete, not used

  GCI_PERFORM_FLAG_INTERPRETED = 0x20, /* disable native code for the execution*/

  GCI_PERFORM_RUBY = 0x40  /* for use by GciExecuteFromContextDbg*
                            *   for implementing Ruby doit in ruby topaz */
 };
"
