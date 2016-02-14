API
apiGciExecuteStrFromContextDbg_: source a: sourceSize a: sourceClassOopType a: contextObjectOopType a: symbolListOopType a: flags a: environmentId
"/* =============================================================================
 * GciExecuteStrFromContextDbg_ function
 *
 *  source       A C string containing a sequence of one or more statements .
 *               8 bit ascii unless sourceClass==OOP_CLASS_Utf8 in which case
 *               This must be a UTF-8 encoded string.
 *
 *  sourceSize   the number of bytes in the 'source' array, usually strlen(source)
 *
 *  sourceClass  The OOP of the class that 'source' should be converted to.
 *                Examples are OOP_CLASS_STRING, OOP_CLASS_Utf8, OOP_CLASS_Unicode7 .
 *   contextObject
 *              The OOP of any GemStone object.  The code to be executed is
 *              compiled as if it were an instance method in the class of
 *              contextObject.
 *              A value of OOP_NO_CONTEXT means no context.
 *
 *   symbolList The OOP of a GemStone symbol list (that is, an Array of
 *              instances of SymbolDictionary).  The compiler uses the
 *              symbolList to resolve symbolic references in the code in source.
 *              A value of OOP_NIL means to use the default symbol list for the
 *              current GemStone session (that is, System myUserProfile
 *              symbolList).
 *
 *   flags      zero, or one of bits per GCI_PERFORM_FLAG* in gcicmn.ht
 *
 *   environmentId specifies a compilation environment for the execution,
 *                 normally zero
 *
 * Return Value:
 *   Returns the OOP of the execution result.  In case of error, this function
 *   returns OOP_NIL.
 *==============================================================================
 */
  EXTERN_GCI_DEC(OopType)
GciExecuteStrFromContextDbg(
  const char source[], int64 sourceSize, OopType sourceClass,
  OopType contextObject, OopType symbolList, int flags);

  EXTERN_GCI_DEC(OopType)
GciExecuteStrFromContextDbg_(
  const char source[], int64 sourceSize, OopType sourceClass,
  OopType contextObject, OopType symbolList,
  int flags,  ushort environmentId );
"
	<apicall: GsOopType 'GciExecuteStrFromContextDbg_' (char* ulonglong GsOopType GsOopType GsOopType ulonglong ushort) >
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
