apiGciPerformNoDebug_ support
addressOfArrayOfOopsForGsOopTypes: arrayOfGsOopTypes
  | oopSize address bytes |
  oopSize := self sizeInBytesOfOop.
  address := ExternalAddress gcallocate: arrayOfGsOopTypes size * oopSize.
  bytes := ByteArray new: oopSize.
  1 to: arrayOfGsOopTypes size do: [ :i | 
    | k |
    k := (i - 1) * oopSize.
    self put: ((arrayOfGsOopTypes at: i) getHandle) in: bytes.
    1 to: oopSize do: [ :j | address byteAt: k + j put: (bytes byteAt: j) ] ].
  ^ address