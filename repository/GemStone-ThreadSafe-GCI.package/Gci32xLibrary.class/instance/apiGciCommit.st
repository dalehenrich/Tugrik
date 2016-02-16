API
apiGciCommit
"/* =============================================================================
 * GciCommit function
 *   Write the current transaction to the database.
 *
 * Return Value:
 *   Returns TRUE if the transaction committed successfully.  Returns FALSE if
 *   the transaction fails to commit due to a concurrency conflict or in case of
 *   error.
 *
 * Similar to the expression
 *    GciExecuteStr(""System commitTransaction"", OOP_NIL) == OOP_TRUE
 * except that GciCommit does not generate pending commit/abort errors.
 *==============================================================================
 */
  EXTERN_GCI_DEC(BoolType)
GciCommit(void);
"
	<apicall: bool 'GciCommit' (void) >
	^self externalCallFailed