API
apiGciFetchObjImpl: theObject
"/* =============================================================================
 * GciFetchObjImpl function
 *   Fetch the implementation of an object.
 *
 * Input Arguments:
 *   theObject  The OOP of the specified object.
 *
 * Return Value:
 *   Returns an integer representing the implementation type of theObject
 *   (0=pointer, 1=byte, 2=NSC, or 3=special).  In case of error, the return
 *   value is undefined.
 *==============================================================================
 */
  EXTERN_GCI_DEC(int)
GciFetchObjImpl(OopType theObject);
"
	<apicall: long 'GciFetchObjImpl' (GsOopType) >
	^self externalCallFailed