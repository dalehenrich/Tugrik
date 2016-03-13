testing
validateClassForIndexCreation: aClass
  ^ (aClass canUnderstand: #'<=')
    or: [ aClass == Boolean or: [ aClass == UndefinedObject ] ]