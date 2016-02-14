field definition
fields
   "self defineFields"
   "self new"
	"class GciErrSType {
public:
  OopType       category;                      /* error dictionary       */
  OopType       context;  /* GemStone Smalltalk execution state , a GsProcess */
  OopType       exceptionObj;  /* an instance of AbstractException, or nil; may be nil
                                 if error was not signaled from Smalltalk execution */
  OopType       args[GCI_MAX_ERR_ARGS];        /* arguments to error text */
  int          number;                        /* GemStone error number  */
  int          argCount;                      /* num of arg in the args[]*/
  unsigned char fatal;                         /* nonzero if err is fatal */
  char          message[GCI_ERR_STR_SIZE + 1]; /* null-term. str of err text */
  char          reason[GCI_ERR_reasonSize + 1];
"
	^#(
		(category #GsOopType)
		(context #GsOopType) 
		(exceptionObj #GsOopType) 
		(args #GsOopType 11) 
		(number 'long') 
		(argCount 'long') 
		(fatal 'uchar') 
		(message 'char' 1025) 
      (reason 'char' 1025)
      (padding 'char' 80)
		)