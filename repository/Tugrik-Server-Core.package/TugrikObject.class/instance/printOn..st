printing
printOn: aStream
  aStream
    nextPutAll: self class name;
    nextPutAll: '(';
    nextPutAll: _id value asHexString;
    nextPutAll: ')'