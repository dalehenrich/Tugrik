sigabort test
doCommits: limit
  | count |
  count := 0.
  [ count < limit ]
    whileTrue: [ 
      UserGlobals at: #'TUGRIK_TESTING' put: Object new.
      System commit.
      (Delay forMilliseconds: 50) wait.
      count := count + 1 ].
  ^ true