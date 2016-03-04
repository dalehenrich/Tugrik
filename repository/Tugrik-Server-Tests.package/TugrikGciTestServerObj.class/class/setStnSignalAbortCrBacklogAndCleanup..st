sigabort test
setStnSignalAbortCrBacklogAndCleanup: backlog
  System stoneConfigurationAt: #'StnSignalAbortCrBacklog' put: backlog.
  UserGlobals removeKey: #'TUGRIK_TESTING' ifAbsent: [  ].
  System commit.
  ^ true