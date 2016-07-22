accessing
root
  "self resetRoot"

  "self root"

  Root
    ifNil: [ 
      Root := RcKeyValueDictionary new.
      TugrikDb allSubclasses
        do: [ :cls | 
          cls isSingletonDB
            ifTrue: [ Root at: cls defaultName put: (cls named: cls defaultName) ] ] ].
  ^ Root