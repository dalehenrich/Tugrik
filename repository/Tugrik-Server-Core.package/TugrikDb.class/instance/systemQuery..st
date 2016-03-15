query processing
systemQuery: tokens
  | query result |
  query := tokens at: 2.
  query = 'namespaces'
    ifTrue: [ 
      result := self collections keys asArray
        collect: [ :each | 
          Dictionary new
            at: 'name' put: self name , '.' , each;
            yourself ].
      ^ STON toString: result ].
  self error: 'Unknown system query: ' , query printString