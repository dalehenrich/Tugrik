API
apiGciPerformNoDebug_: receiver a: selectorString a: args a: numArgs a: flags a: environmentId
"/* =============================================================================
 * GciPerformNoDebug, GciPerformNoDebug_ functions
 *   Send a message to a GemStone object, and possibly debugging.
 *   This function is typically used in the
 *   implementation of user interfaces for Smalltalk debuggers .
 *
 * Input Arguments:
 *   receiver   The OOP of the receiver of the message.
 *   selector   A string that defines the message selector.  For keyword
 *              selectors, all keywords are concatenated in the string. (For
 *              example, at:put:).
 *   args       An array of OOPs.  Each element in the array corresponds to an
 *              argument for the message.  If there are no message arguments,
 *              use a dummy OOP here.
 *   numArgs    The number of arguments to the message.  For unary selectors
 *              (messages with no arguments), numArgs is zero.
 *
 *   flags      zero, or one of bits per GCI_PERFORM_FLAG* in gcicmn.ht
 *
 *   environmentId  a compilation environment identifier, normally zero for Smalltalk
 *
 * Return Value:
 *   Returns the OOP of the result of Smalltalk execution.  In case of error,
 *   this function returns OOP_NIL.
 *==============================================================================
 */
  EXTERN_GCI_DEC(OopType)
GciPerformNoDebug( OopType receiver, const char selector[],
        const OopType args[], int numArgs, int flags);

  EXTERN_GCI_DEC(OopType)
GciPerformNoDebug_( OopType receiver, const char selector[],
        const OopType args[], int numArgs, int flags, ushort environmentId);
"
	<apicall: GsOopType 'GciPerformNoDebug_' (GsOopType char* ulong long long ushort) >
	^self externalCallFailed