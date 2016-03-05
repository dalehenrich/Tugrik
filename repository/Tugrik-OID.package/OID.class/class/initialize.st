initialize
initialize
  "self initialize"

  counter := TransientValue value: 0.
  sessionSerialNum := TransientValue
    value: GsCurrentSession currentSession sessionSerialNum.
  SystemLoginNotification subscribe: self name