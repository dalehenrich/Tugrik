sigabort test
sessionsReferencingOldestCrInTransactionReport: session2SessionId
  | stream |
  stream := WriteStream on: String new.
  stream
    nextPutAll:
        'this is not the session you are looking for (' , session2SessionId printString
            , ' ' , System session printString , ')';
    cr;
    nextPutAll: '#('.
  System sessionsReferencingOldestCrInTransaction
    do: [ :each | 
      stream
        nextPutAll: each printString;
        cr ].
  stream nextPutAll: ') -> ' , System otherSessionNames printString.
  ^ stream contents