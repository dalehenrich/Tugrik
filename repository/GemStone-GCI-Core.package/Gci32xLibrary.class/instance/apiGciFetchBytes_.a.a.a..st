API
apiGciFetchBytes_: theObject a: startIndex a: theBytes a: numBytes
"/* =============================================================================
 * GciFetchBytes function
 *   Fetch multiple bytes from an indexed byte object.
 *
 * Input Arguments:
 *   theObject	The OOP of the GemStone byte object.
 *   startIndex	The index into theObject at which to begin fetching bytes.  (The
 *              index of the first element is 1.)  Note that if startIndex is 1
 *              greater than the size of the object, this function returns a
 *              byte array of size 0, but no error is generated.
 *   numBytes	The maximum number of bytes to return.
 *
 * Result Arguments:
 *   theBytes	The array of fetched bytes.
 *
 * Return Value:
 *   Returns the number of bytes fetched.  (This may be less than numBytes,
 *   depending upon the size of theObject.)  In case of error, this function
 *   returns zero.
 *
 * Gs64 v3.0:
 * If theObject is an object with multiple bytes per character or digit
 *  such as DoubleByteString, LargeInteger, Float ,
 * the startIndex and numBytes must be aligned on a character boundary
 * and the result in theBytes will have been swizzled to client native
 * byte order if needed.
 *==============================================================================
 */
  EXTERN_GCI_DEC(int64) 
GciFetchBytes_(
  OopType theObject, int64 startIndex,
  ByteType theBytes[], int64 numBytes 
    );
"
	<apicall: ulonglong 'GciFetchBytes_' (GsOopType ulonglong void* ulonglong) >
	^self externalCallFailed