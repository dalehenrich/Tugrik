API
apiGciFetchChars_: theObject a: startIndex a: cString a: maxSize
"/*=======================================================================
 * GciFetchChars
 *  equivalent to GciFetchBytes, except that it is assummed that theObject
 *  contains ASCII text. The bytes fetched are stored in memory
 *  starting at cString.  At most maxSize - 1 bytes will be fetched from
 *  the object, and a \0 character will be stored in memory following
 *  the bytes fetched.  The function returns the number of bytes fetched,
 *  excluding the null terminator character, which is equvalent to
 *  strlen(cString) if the object does not contain any null characters.
 *  If an error occurs, the function result is 0, and the contents of
 *  *cString is undefined.
 *=======================================================================
 */
  EXTERN_GCI_DEC(int64) 
GciFetchChars_(
  OopType theObject, int64 startIndex,
  char *cString, int64 maxSize 
    );

"
	<apicall: ulonglong 'GciFetchChars_' (GsGciOopType ulonglong void* ulonglong) >
	^self externalCallFailed