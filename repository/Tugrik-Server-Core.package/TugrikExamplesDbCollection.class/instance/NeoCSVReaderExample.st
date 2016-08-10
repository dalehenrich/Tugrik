examples
NeoCSVReaderExample
  ^ '  ''NeoCSVBenchmark.csv'' asFileReference
  readStreamDo: [ :stream |
  | reader converter buffer bufCnt numRecords records |
  converter := [ :string | NeoNumberParser parse: string ].
  reader := NeoCSVReader on: (ZnBufferedReadStream on: stream).
  reader
    recordClass: NeoCSVTestObject;
    addIntegerField: #''x:'';
    addIntegerField: #''y:'';
    addIntegerField: #''z:''.
  buffer := Array new: 1000.
  bufCnt := 0.
  [ reader atEnd ]
    whileFalse: [
      bufCnt := bufCnt + 1.
      buffer at: bufCnt put: reader next.
      bufCnt = buffer size
        ifTrue: [
          numRecords := bufCnt.
          records := buffer.
          DevKitShell
            onServerDo: [
              1 to: numRecords do: [ :index |
                | record |
                record := records at: index.
                NeoCSVDictionary at: record x put: record ].
              System commitTransaction.
              nil ].
          bufCnt := 0 ] ] ].
   DevKitShell onServerDo: [ System commitTransaction ]'