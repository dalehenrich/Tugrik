accessing
counterNext
  "increase the 24 bit counter and return"

  counter value: (counter value + 1) \\ 16rFFFFFF.
  ^ counter value