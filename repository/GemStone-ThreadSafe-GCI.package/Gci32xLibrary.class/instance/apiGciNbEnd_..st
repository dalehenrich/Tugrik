API - non-blocking
apiGciNbEnd_: vOut
"/* =============================================================================
 *  GciNbEnd_  , GciNbEndPoll
 *
 *   Test the status of nonblocking call in progress for completion.
 *
 *  Arguments
 *   int64 *vOut
 *     vOut is the address at which GciNbEnd should place the
 *     result of the nonblocking call when it is complete.
 *     The actual result type is that of the corresponding blocking
 *     GCI call, typically   int , BoolType or OopType  , and may be accessed
 *     by normal C casting without regard to byte order of the CPU.
 *     The location for the result is allocated by the caller of GciNbEnd_ ,
 *     typically on the C stack , for example:
 *       GciNbExecute(...)
 *       int64 res;
 *       GciNbProgressEType status = GciNbEnd_(&res, 1000);
 *       ...
 *       OopType resOop = res;
 *
 *    int timeoutMs , number of milliseconds that GciNbEndPoll should wait
 *          for GCI_RESULT_READY status to occur.
 *
 * Return Value:
 *   GciNbEnd_ and GciNbEndPoll return an enumerated type.  Its value is
 *   GCI_RESULT_READY if the outstanding nonblocking call has completed
 *   execution and its result is ready, GCI_RESULT_NOT_READY if the call is not
 *   complete and there has been no change since the last inquiry, and
 *   GCI_RESULT_PROGRESSED if the call is not complete but progress has been
 *   made towards its completion.
 * =============================================================================
 */
  EXTERN_GCI_DEC(GciNbProgressEType)
GciNbEnd_(int64 *vOut);
"
	<apicall: short 'GciNbEnd_' (ulong) >
	^self externalCallFailed
"/* Nonblocking status constants ,
 *  must agree with hydra GciCalls.java , do not reorder */
typedef enum {
  GCI_RESULT_NOT_READY = 0,             /* nothing happened */
  GCI_RESULT_PROGRESSED = 1,    /* a packet was received */
  GCI_RESULT_READY = 2, /* your result is now ready */
  GCI_RESULT_HAS_ERROR = 3 /* result is ready with error, used in hydra */
  } GciNbProgressEType;
"
