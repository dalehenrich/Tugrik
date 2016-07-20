queries
createCollectionAll
  super createCollection.
  {(Dictionary new
    at: #'name' put: 'Tugrik Basic';
    at: #'order' put: 1;
    at: #'contents' put: self tugrikBasicExample;
    yourself).
  (Dictionary new
    at: #'name' put: 'Tugrik Large';
    at: #'order' put: 3;
    at: #'contents' put: self tugrikLargeExample;
    yourself).
  (Dictionary new
    at: #'name' put: 'GemStone Basic';
    at: #'order' put: 4;
    at: #'contents' put: self gemstoneBasicExample;
    yourself).
  (Dictionary new
    at: #'name' put: 'GemStone Large';
    at: #'order' put: 4;
    at: #'contents' put: self gemstoneLargeExample;
    yourself).
  (Dictionary new
    at: #'name' put: 'Mongo Basic';
    at: #'order' put: 2;
    at: #'contents' put: self mongoBasicExample;
    yourself).
  (Dictionary new
    at: #'name' put: 'Mongo Large';
    at: #'order' put: 5;
    at: #'contents' put: self mongoLargeExample;
    yourself)} do: [ :dict | self doInsert: dict ]