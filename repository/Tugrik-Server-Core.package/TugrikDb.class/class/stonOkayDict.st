accessing
stonOkayDict
  ^ StonOkayDict
    ifNil: [ 
      StonOkayDict := STON
        toString:
          (Dictionary new
            at: 'ok' put: 1.0;
            yourself) ]