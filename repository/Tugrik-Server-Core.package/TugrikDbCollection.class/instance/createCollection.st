queries
createCollection
  collection := IdentityBag new.
  collection createEqualityIndexOn: '_id' withLastElementClass: Integer.
  oidQuery := 'each._id = oidValue' asQueryOn: collection