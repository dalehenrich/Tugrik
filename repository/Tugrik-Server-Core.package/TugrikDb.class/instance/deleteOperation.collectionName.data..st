collection processing
deleteOperation: id collectionName: collectionName data: dataArray
  | result |
  result := (self collections
    at: collectionName
    ifAbsent: [ 
      ^ STON
        toString:
          (Dictionary new
            at: 'ok' put: 1.0;
            yourself) ])
    deleteOperation: dataArray.
  ^ STON toString: result