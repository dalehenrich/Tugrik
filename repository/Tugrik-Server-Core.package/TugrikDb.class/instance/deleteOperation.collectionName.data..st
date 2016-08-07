collection processing
deleteOperation: id collectionName: collectionName data: dataArray
  | result |
  result := (self collections
    at: collectionName
    ifAbsent: [ 
      ^ self
        serialize:
          (Dictionary new
            at: 'ok' put: 1.0;
            yourself) ])
    deleteOperation: dataArray.
  ^ self serialize: result