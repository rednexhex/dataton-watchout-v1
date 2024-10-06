
--------  Graphic Elements  -------

table.insert(graphics,{
  Type = "Text",
  Text = "Build Info",
  FontSize = 12,
  HTextAlign = "Left",
  Position = {0, 270},
  Size = {62, 20}
})
table.insert(graphics,{
  Type = "Text",
  Text = "v" .. PluginInfo.BuildVersion,
  FontSize = 12,
  HTextAlign = "Left",
  Position = {0, 290},
  Size = {62, 20}
})
table.insert(graphics,{
  Type="Image",
  Image=sig,
  Position={0,240},
  Size={20,23}
  })

table.insert(graphics,{
  Type="Image",
  Image=datatonlogo,
  Position={230,220},
  Size={175,88}
  })




-- Connection Controls
table.insert(graphics, {
  Type = "Text",
  Text = "IP Address:",
  Position = {0, 5},
  Size = {75, 16},
  FontSize = 14,
  HTextAlign = "Right"
})
table.insert(graphics, {
  Type = "Text",
  Text = "Port:",
  Position = {0, 25},
  Size = {75, 16},
  FontSize = 14,
  HTextAlign = "Right"
})
layout["IPAddress"] = {
  PrettyName = "IP Address",
  Style = "Text",
  Position = {100, 5},
  Size = {100, 16}
}
layout["Port"] = {
  PrettyName = "Port",
  Style = "Text",
  Position = {100, 25},
  Size = {100, 16}
}



--Show 1

table.insert(graphics, {
  Type = "Text",
  Text = "Show 1",
  Position = {0,70},
  Size = {50, 16},
  FontSize = 12,
  HTextAlign = "Left"
})
layout["Show1Cue"] = {
  PrettyName = "Show1Cue",
  Legend = "Cue",
  FontSize = 12,
  Style = "Button",
  Position = {50, 70},
  Size = {50, 20}
}
layout["Show1Halt"] = {
  PrettyName = "Show1Halt",
  Legend = "Halt",
  FontSize = 12,
  Style = "Button",
  Position = {100, 70},
  Size = {50, 20}
}
layout["Show1Run"] = {
  PrettyName = "Show1Run",
  Legend = "Run",
  FontSize = 12,
  Style = "Button",
  Position = {150, 70},
  Size = {50, 20}
}

table.insert(graphics, {
  Type = "Text",
  Text = "Name",
  Position = {220, 70},
  Size = {40, 16},
  FontSize = 12,
  HTextAlign = "Left"
})

layout["ShowName1"] = {
  PrettyName = "ShowName1",
  Style = "Text",
  Position = {260, 70},
  Size = {160, 20}
}

--Show 2

table.insert(graphics, {
  Type = "Text",
  Text = "Show 2",
  Position = {0,120},
  Size = {50, 16},
  FontSize = 12,
  HTextAlign = "Left"
})
layout["Show2Cue"] = {
  PrettyName = "Show2Cue",
  Legend = "Cue",
  FontSize = 12,
  Style = "Button",
  Position = {50, 120},
  Size = {50, 20}
}
layout["Show2Halt"] = {
  PrettyName = "Show2Halt",
  Legend = "Halt",
  FontSize = 12,
  Style = "Button",
  Position = {100, 120},
  Size = {50, 20}
}
layout["Show2Run"] = {
  PrettyName = "Show2Run",
  Legend = "Run",
  FontSize = 12,
  Style = "Button",
  Position = {150, 120},
  Size = {50, 20}
}


table.insert(graphics, {
  Type = "Text",
  Text = "Name",
  Position = {220, 120},
  Size = {40, 16},
  FontSize = 12,
  HTextAlign = "Left"
})

layout["ShowName2"] = {
  PrettyName = "ShowName2",
  Style = "Text",
  Position = {260, 120},
  Size = {160, 20}
}


--Show 3

table.insert(graphics, {
  Type = "Text",
  Text = "Show 3",
  Position = {0,170},
  Size = {50, 16},
  FontSize = 12,
  HTextAlign = "Left"
})
layout["Show3Cue"] = {
  PrettyName = "Show3Cue",
  Legend = "Cue",
  FontSize = 12,
  Style = "Button",
  Position = {50, 170},
  Size = {50, 20}
}
layout["Show3Halt"] = {
  PrettyName = "Show3Halt",
  Legend = "Halt",
  FontSize = 12,
  Style = "Button",
  Position = {100, 170},
  Size = {50, 20}
}
layout["Show3Run"] = {
  PrettyName = "Show3Run",
  Legend = "Run",
  FontSize = 12,
  Style = "Button",
  Position = {150, 170},
  Size = {50, 20}
}

table.insert(graphics, {
  Type = "Text",
  Text = "Name",
  Position = {220, 170},
  Size = {40, 16},
  FontSize = 12,
  HTextAlign = "Left"
})

layout["ShowName3"] = {
  PrettyName = "ShowName3",
  Style = "Text",
  Position = {260, 170},
  Size = {160, 20}
}
