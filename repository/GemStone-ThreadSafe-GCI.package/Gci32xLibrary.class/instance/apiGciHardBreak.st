API
apiGciHardBreak
 "/* ==========================================================================
 * GciHardBreak
 *
 *  Depending on the operation in progress, hard break may kill
 *  the session, or may just interrupt the current Smalltalk execution.
 *  A hard break during Smalltalk execution differs from a soft break
 *  in that hard break is not trappable by Smalltalk Exceptions.  Hard
 *  break is also recognized by some long primitives that do not respond to
 *  soft break.
 *
 *  A hard break during the following Repository methods will kill the session
 *    markForCollection, fullBackupTo:,  restoreFromBackup(s):
 *    objectAudit, auditWithLimit:, repairWithLimit:
 *    pagesWithPercentFree   .
 *
 *  Gs64 v3.2 , has no effect if called from within a user action.
 *
 * ==========================================================================
 */
  GCI_ALIGN_STACK EXTERN_GCI_DEC(void)
GciHardBreak(void);
"
	<apicall: void 'GciHardBreak' () >
	^self externalCallFailed