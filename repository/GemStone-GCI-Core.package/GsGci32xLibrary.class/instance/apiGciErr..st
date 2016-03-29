API
apiGciErr: errorReport
"/* ==========================================================================
 *  GciErr
 *    arguments: errorReport, address of a Gci error report structure
 *
 *    results:  function returns a boolean, as follows:
 *      TRUE indicates an error occurred. If errorReport is not NULL,
 *        *errorReport is filled in to contain the latest error
 *        information. The internal error buffer in the Gci is cleared.
 *        You can only call GciErr once for a given error.
 *        If GciErr is called a second time, the function will return FALSE.
 *
 *      FALSE indicates no error occurred, and contents of *errorReport is
 *        unchanged.
 *
 *   If function result is TRUE,
 *     if error occurred during a StoreTravDoTravRefs or traversal with GCI_TRAV_WITH_REF_SET
 *       all objects referenced from *errorReport have been added to ReferencedSet
 *     else
 *       all objects referenced from *errorReport have been added to PureExportSet
 * ==========================================================================
 */
  GCI_ALIGN_STACK EXTERN_GCI_DEC(BoolType)
GciErr(GciErrSType *errorReport);
"
	<apicall: bool 'GciErr' (GsGci32xErrSType*) >
	^self externalCallFailed