queries
createExampleCollection
  {(Dictionary new
    at: #'name' put: 'Install and Update';
    at: #'order' put: 0;
    at: #'contents' put: self installGitFileTree;
    yourself).
  (Dictionary new
    at: #'name' put: 'Tugrik Basic';
    at: #'order' put: 1;
    at: #'contents' put: self tugrikBasicExample;
    yourself).
  (Dictionary new
    at: #'name' put: 'GemStone Basic';
    at: #'order' put: 4;
    at: #'contents' put: self gemstoneBasicExample;
    yourself).
  (Dictionary new
    at: #'name' put: 'Mongo Basic';
    at: #'order' put: 2;
    at: #'contents' put: self mongoBasicExample;
    yourself)} do: [ :dict | self doInsert: dict ]