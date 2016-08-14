queries
createCollection
  collection := RcIdentityBag new.
  collection createEqualityIndexOn: '_oidValue' withLastElementClass: Integer.
  oidQuery := 'each._oidValue = oidValue' asQueryOn: collection