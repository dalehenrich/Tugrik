API
apiGciFetchClass: theObject
"/* =============================================================================
 * GciFetchClass function
 *   Fetch the class of an object.
 *
 * Input Arguments:
 *   theObject	The OOP of the specified object.
 *
 * Return Value:
 *   Returns the OOP of the object's class.  In case of error, this function
 *   returns OOP_NIL.  The GCI include file gcioop.ht defines a C constant for
 *   each of the Smalltalk kernel classes.
 *==============================================================================
 */
  GCI_ALIGN_STACK EXTERN_GCI_DEC(OopType) 
GciFetchClass(OopType theObject);
"
	<apicall: GsGciOopType 'GciFetchClass' (GsGciOopType) >
	^self externalCallFailed
