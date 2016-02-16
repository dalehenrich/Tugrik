API
apiGciBegin
"/* =============================================================================
 * GciBegin function
 *
 *  Aborts the current transaction and starts a new transaction.
 *
 *  Equivalent to     GciExecuteStr (""System beginTransaction"", OOP_NIL)
 *==============================================================================
 */
  EXTERN_GCI_DEC(void)
GciBegin(void);
"
	<apicall: void 'GciBegin' (void) >
	^self externalCallFailed