tests
testTugrikBlockPredicate01
  | nsc blockPredicate query elements queryResult |
  nsc := IdentitySet new.
  elements := {}.
  1 to: 3 do: [ :index | 
    | ar assoc |
    ar := {}.
    1 to: index do: [ :each | ar add: each asString ].
    assoc := index -> ar.
    nsc add: assoc.
    elements add: assoc ].
  blockPredicate := TugrikBlockQueryPredicate
    selectBlock: [ :each | each value = #('1') ].
  query := blockPredicate asQuery on: nsc.
  queryResult := query queryResult.
  self assert: queryResult size = 1.
  self assert: (queryResult includesIdentical: (elements at: 1))