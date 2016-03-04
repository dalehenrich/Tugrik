accessing
gciLibraryExtension
  self isOnLinux
    ifTrue: [ ^ '.so' ].
  self isOnMacintosh
    ifTrue: [ ^ '.dylib' ].
  self isOnWindows
    ifTrue: [ ^ '.dll' ].
  self error: 'Unknown OS platform'