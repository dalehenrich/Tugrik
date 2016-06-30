accessing
stonOkayDict
  "avoid object creation overhead for the standard result dictionary"

  ^ StonOkayDict
    ifNil: [ 
      StonOkayDict := STON
        toString:
          (Dictionary new
            at: 'ok' put: 1.0;
            yourself) ]