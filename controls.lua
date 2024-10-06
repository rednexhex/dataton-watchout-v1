
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
  DefaultValue = 3039,
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
  Name = "Show1Cue",
  ControlType = "Button",
  ButtonType = "Trigger",
  Count = 1
})
table.insert(ctrls, {
  Name = "Show1Halt",
  ControlType = "Button",
  ButtonType = "Trigger",
  Count = 1
})
table.insert(ctrls, {
  Name = "Show1Run",
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
  Name = "Show2Cue",
  ControlType = "Button",
  ButtonType = "Trigger",
  Count = 1
})
table.insert(ctrls, {
  Name = "Show2Halt",
  ControlType = "Button",
  ButtonType = "Trigger",
  Count = 1
})
table.insert(ctrls, {
  Name = "Show2Run",
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
  Name = "Show3Cue",
  ControlType = "Button",
  ButtonType = "Trigger",
  Count = 1
})
table.insert(ctrls, {
  Name = "Show3Halt",
  ControlType = "Button",
  ButtonType = "Trigger",
  Count = 1
})
table.insert(ctrls, {
  Name = "Show3Run",
  ControlType = "Button",
  ButtonType = "Trigger",
  Count = 1
})