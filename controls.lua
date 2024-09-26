
table.insert(ctrls, {
  Name = "IPAddress",
  ControlType = "Text",
  DefaultValue = EmptyIPMessage,
  Count = 1
})
table.insert(ctrls, {
  Name = "Port",
  ControlType = "Knob",
  ControlUnit = "Integer",
  Min = 1,
  Max = 65535,
  DefaultValue = 3040,
  Count = 1
})

-- Show 1

table.insert(ctrls, {
  Name = "ShowName1",
  ControlType = "Text",
  DefaultValue = "Show 1",
  Count = 1
})
table.insert(ctrls, {
  Name = "Show1Play",
  ControlType = "Button",
  ButtonType = "Trigger",
  Count = 1
})
table.insert(ctrls, {
  Name = "Show1Stop",
  ControlType = "Button",
  ButtonType = "Trigger",
  Count = 1
})

-- Show 2

table.insert(ctrls, {
  Name = "ShowName2",
  ControlType = "Text",
  DefaultValue = "Show 2",
  Count = 1
})
table.insert(ctrls, {
  Name = "Show2Play",
  ControlType = "Button",
  ButtonType = "Trigger",
  Count = 1
})
table.insert(ctrls, {
  Name = "Show2Stop",
  ControlType = "Button",
  ButtonType = "Trigger",
  Count = 1
})

-- Show 3

table.insert(ctrls, {
  Name = "ShowName3",
  ControlType = "Text",
  DefaultValue = "Show 3",
  Count = 1
})
table.insert(ctrls, {
  Name = "Show3Play",
  ControlType = "Button",
  ButtonType = "Trigger",
  Count = 1
})
table.insert(ctrls, {
  Name = "Show3Stop",
  ControlType = "Button",
  ButtonType = "Trigger",
  Count = 1
})