API - thread safe
apiGciTsSessionIsRemote: sess a: enable a:err
"EXTERN_GCI_DEC(int) GciTsGemTrace(GciSession sess, int enable, GciErrSType *err);
  // For use in debugging the implementation.
  // note that the printSendTrace() and printRecvTrace in linkgc.hc
  // may be sufficient in a slow build without needing GciGemTrace(1)
  // enable = 0 none, 1 commands, 2 commands+args , 3 even more
  // Function result is previous value of the tracing state.
  // Also enabled by    export GS_LGC_DEBUG=1   or
  // export GS_LGC_DEBUG=2 in enviroments of libgcirpc.so and of netldi .
"
	<apicall: int 'GciTsSessionIsRemote' (GciTsSession int GciTs32xErrSType*) >
	^self externalCallFailed
	

	