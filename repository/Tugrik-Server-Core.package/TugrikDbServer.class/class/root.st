accessing
root
  "self resetRoot"

  "self root"

  root
    ifNil: [ 
      root := RcKeyValueDictionary new.
      TugrikDb allSubclasses
        do: [ :cls | 
          cls isSingletonDB
            ifTrue: [ root at: cls defaultName put: (cls named: cls defaultName dbServer: self) ] ] ].
  ^ root