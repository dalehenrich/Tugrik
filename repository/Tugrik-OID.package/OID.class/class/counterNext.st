accessing
counterNext
  "increase the 24 bit counter and return"

  | theCounter |
  theCounter := SessionTemps current at: #'OID_COUNTER_Value' otherwise: 0.
  theCounter := (theCounter + 1) \\ 16rFFFFFF.
  SessionTemps current at: #'OID_COUNTER_Value' put: theCounter.
  ^ theCounter