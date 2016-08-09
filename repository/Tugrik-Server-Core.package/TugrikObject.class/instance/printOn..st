printing
printOn: aStream
  aStream
    nextPutAll: self class name;
    nextPutAll: '(';
    yourself.
  _id ifNotNil: [ aStream nextPutAll: _id value asHexString ].
  aStream nextPutAll: ')'