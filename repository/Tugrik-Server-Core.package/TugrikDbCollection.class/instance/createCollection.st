queries
createCollection
  collection := IdentityBag new.
  collection createEqualityIndexOn: '_oidValue' withLastElementClass: Integer.
  oidQuery := 'each._oidValue = oidValue' asQueryOn: collection