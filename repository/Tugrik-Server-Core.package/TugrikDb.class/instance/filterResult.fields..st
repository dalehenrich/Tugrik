query processing
filterResult: result fields: fieldsDictionary
  | newResult |
  newResult := Array new.
  result
    do: [ :aTugrikObject | 
      aTugrikObject
        applyFieldFilter: fieldsDictionary
        do: [ :copy | newResult add: copy ] ].
  ^ newResult