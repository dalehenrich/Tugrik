queries
createCollection
  collection := RcIdentityBag new.
  oidMap := IntegerKeyValueDictionary new.
  oidIndex := RcIdentityBag new.
  oidIndex createEqualityIndexOn: '_id.value' withLastElementClass: Integer.
  oidQuery := 'each._id.value = oidValue' asQueryOn: oidIndex