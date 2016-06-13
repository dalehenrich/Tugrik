queries
createCollection
  collection := RcIdentityBag new.
  oidMap := IntegerKeyValueDictionary new.
  collection createEqualityIndexOn: '_id.value' withLastElementClass: Integer.
  oidQuery := 'each._id.value = oidValue' asQueryOn: collection