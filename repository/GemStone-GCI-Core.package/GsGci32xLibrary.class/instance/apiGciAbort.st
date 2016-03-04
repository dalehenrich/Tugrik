API
apiGciAbort
"/* =============================================================================
 * GciAbort function
 *   Abort the current transaction.
 *
 * An abort operation should always succeed, and thus this function generates
 * no errors.
 * Equivalent to  GciExecuteStr (""System abortTransaction"", OOP_NIL);
 *==============================================================================
 */
  EXTERN_GCI_DEC(void)
GciAbort(void);
"
	<apicall: void 'GciAbort' (void) >
	^self externalCallFailed