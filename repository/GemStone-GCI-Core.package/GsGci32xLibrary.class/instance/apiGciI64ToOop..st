API
apiGciI64ToOop: anInteger
"/* =============================================================================
 * GciI64ToOop function
 *   Return a GemStone object that corresponds to a C 64 bit integer.
 *
 * Input Arguments:
 *   arg  a   C 64 bit signed integer
 *
 * Return Value:
 *   The GciI64ToOop function returns the OOP of a GemStone object whose value
 *   is equivalent to the input.
 *
 * If the result is not a SmallInteger, the result is automatically
 *  saved by a GciSaveObjs() call. (see also GciSaveObjs ).
 *==============================================================================
 */
  EXTERN_GCI_DEC(OopType)
GciI64ToOop(int64 arg);
"
	<apicall: GsGciOopType 'GciI64ToOop' (longlong) >
	^self externalCallFailed