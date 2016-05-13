tests
testTugrikBlockPredicate02
  | nsc predicate blockPredicate query elements queryResult |
  nsc := IdentitySet new.
  elements := {}.
  {#(1 2).
  #(2 2).
  #(3 2).
  #(4 3)}
    do: [ :spec | 
      | ar assoc |
      ar := {}.
      1 to: (spec at: 2) do: [ :each | ar add: each asString ].
      assoc := (spec at: 1) -> ar.
      nsc add: assoc.
      elements add: assoc ].
  predicate := GsQueryPredicate path: 'each.key' operator: #'>' constant: 2.
  blockPredicate := TugrikBlockQueryPredicate
    queryBlock: [ :each | each value = #('1' '2') ].
  query := (predicate & blockPredicate) asQuery on: nsc.
  queryResult := query queryResult.
  self assert: queryResult size = 1.
  self assert: (queryResult includesIdentical: (elements at: 3))