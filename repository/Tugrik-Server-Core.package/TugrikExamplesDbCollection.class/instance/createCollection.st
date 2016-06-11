queries
createCollection
  super createCollection.
  {(Dictionary new
    at: #'name' put: 'Tugrik Basic Example';
    at: #'contents' put: self tugrikBasicExample;
    yourself).
  (Dictionary new
    at: #'name' put: 'Tugrik Large Example';
    at: #'contents' put: self tugrikLargeExample;
    yourself).
  (Dictionary new
    at: #'name' put: 'Mongo Basic Example';
    at: #'contents' put: self mongoBasicExample;
    yourself).
  (Dictionary new
    at: #'name' put: 'Mongo Large Example';
    at: #'contents' put: self mongoLargeExample;
    yourself)}
    do: [ :dict | 
      | query |
      query := 'each._id.value = oid' asQueryOn: collection.
      self insertOperation: dict query: query ]