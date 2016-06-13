initialize
initialize
  "self initialize"

  sessionSerialNum := TransientValue
    value: GsCurrentSession currentSession sessionSerialNum.
  SystemLoginNotification subscribe: self name