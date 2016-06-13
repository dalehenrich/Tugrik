accessing
counterNext
  "increase the 24 bit counter and return"

  | stc assoc theCounter |
  stc := SessionTemps current.
  assoc := stc
    associationAt: #'OID_COUNTER_Value'
    ifAbsent: [ 
      assoc := SymbolAssociation newWithKey: #'OID_COUNTER_Value' value: 0.
      SessionTemps current addAssociation: assoc.
      assoc ].
  theCounter := assoc value.
  theCounter := (theCounter + 1) \\ 16rFFFFFF.
  assoc value: theCounter.
  ^ theCounter