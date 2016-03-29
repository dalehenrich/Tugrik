API
apiGciFetchSize_: theObject
"/* =============================================================================
 * GciFetchSize function
 *   Fetch the size of an object.
 *
 * Input Arguments:
 *   theObject	The OOP of the specified object.
 *
 * Return Value:
 *   Returns the size of theObject.  In case of error, this function returns
 *   zero.
 *==============================================================================
 */
  EXTERN_GCI_DEC(int64) 
GciFetchSize_(OopType theObject);
"
	<apicall: ulonglong 'GciFetchSize_' (GsGciOopType) >
	^self externalCallFailed
