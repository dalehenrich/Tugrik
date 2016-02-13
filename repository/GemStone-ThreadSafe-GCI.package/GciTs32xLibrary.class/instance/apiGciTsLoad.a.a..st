API
apiGciTsLoad: path a: errBuf a: errBufSize
"/* GciTsLoad attempts to load the thread-safe GCI library .
 * If 'path' is not NULL then it must point to a ';' seperated list
 * of directories to search for the library to load. The directories
 * in path will be searched before the defaults ones.
 * If 'path' is NULL then only the default path will be searched.
 * Returns TRUE if successful.
 * Returns FALSE if it fails and if 'errBuf' is not NULL will load
 * it with a null terminated error message.
 * Note: this call will fail if a GCI library is already loaded.
 */
BoolType GciTsLoad(const char *path, char *errBuf, size_t errBufSize);
"
	<apicall: bool 'GciTsLoad' (char* char* size_t) >
	^self externalCallFailed