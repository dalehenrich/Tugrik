API
apiGciTsExecute: sess a: sourceStr a: sourceOop a: contextObject a: symbolList a: flags a: environmentId a: err
"EXTERN_GCI_DEC(OopType) GciTsExecute(GciSession sess,
            const char* sourceStr, OopType sourceOop,
            OopType contextObject, OopType symbolList,
         int flags /* per GCI_PERFORM_FLAG* in gcicmn.ht */,
         ushort environmentId /* normally zero*/,  GciErrSType *err);
 /* returns OOP_ILLEGAL if an error was returned in *err .
    If sourceStr is not NULL, it is used as the source string,
    and sourceOop specifies a class, typically OOP_CLASS_STRING or OOP_CLASS_Utf8,
    If sourceStr == NULL, then sourceOop is expected to be a kind of
    String, Unicode16, Unicode32, or Utf8 .
    If contextObj != OOP_ILLEGAL, source is compiled as if
    it were an instance method of the class of contextObj,
    otherwise compilation produces an anonymous method in which self == nil.
    If symbolList == OOP_NIL, use (System myUserProfile symbolList)
    to resolve literals in the compilation, otherwise use symbolList argument. */
"
	<apicall: GsOopType 'GciTsExecute' (GciTsSession* char* GsOopType GsOopType GsOopType  ulonglong ushort GciTs32xErrSType*) >
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

	