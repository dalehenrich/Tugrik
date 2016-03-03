API
apiGciNewByteObj: classOop a: byteArray a: byteArraySize
"/* =============================================================================
 * GciNewByteObj function
 *   Create and initialize a new byte object.
 *
 * Input Arguments:
 *   aClass     The OOP of the class of which an instance is to be created.
 *   value      Pointer to an array of byte values to be stored in the
 *              newly-created object.
 *   valueSize  The number of byte values in value.
 *
 * Return Value:
 *   The OOP of the newly created object.
 *==============================================================================
 */
  EXTERN_GCI_DEC(OopType)
GciNewByteObj(OopType aClass, const ByteType *value, int64 valueSize);
"
	<apicall: GsOopType 'GciNewByteObj' (GsOoptype char* longlong) >
	^self externalCallFailed