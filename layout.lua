
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
  Position={150,220},
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
layout["Show1Play"] = {
  PrettyName = "Show1Play",
  Legend = "Play",
  FontSize = 12,
  Style = "Button",
  Position = {50, 70},
  Size = {50, 20}
}
layout["Show1Stop"] = {
  PrettyName = "Show1Stop",
  Legend = "Stop",
  FontSize = 12,
  Style = "Button",
  Position = {100, 70},
  Size = {50, 20}
}

table.insert(graphics, {
  Type = "Text",
  Text = "Name",
  Position = {160, 70},
  Size = {40, 16},
  FontSize = 12,
  HTextAlign = "Left"
})

layout["ShowName1"] = {
  PrettyName = "ShowName1",
  Style = "Text",
  Position = {200, 70},
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
layout["Show2Play"] = {
  PrettyName = "Show2Play",
  Legend = "Play",
  FontSize = 12,
  Style = "Button",
  Position = {50, 120},
  Size = {50, 20}
}
layout["Show2Stop"] = {
  PrettyName = "Show2Stop",
  Legend = "Stop",
  FontSize = 12,
  Style = "Button",
  Position = {100, 120},
  Size = {50, 20}
}

table.insert(graphics, {
  Type = "Text",
  Text = "Name",
  Position = {160, 120},
  Size = {40, 16},
  FontSize = 12,
  HTextAlign = "Left"
})

layout["ShowName2"] = {
  PrettyName = "ShowName2",
  Style = "Text",
  Position = {200, 120},
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
layout["Show3Play"] = {
  PrettyName = "Show3Play",
  Legend = "Play",
  FontSize = 12,
  Style = "Button",
  Position = {50, 170},
  Size = {50, 20}
}
layout["Show3Stop"] = {
  PrettyName = "Show3Stop",
  Legend = "Stop",
  FontSize = 12,
  Style = "Button",
  Position = {100, 170},
  Size = {50, 20}
}

table.insert(graphics, {
  Type = "Text",
  Text = "Name",
  Position = {160, 170},
  Size = {40, 16},
  FontSize = 12,
  HTextAlign = "Left"
})

layout["ShowName3"] = {
  PrettyName = "ShowName1",
  Style = "Text",
  Position = {200, 170},
  Size = {160, 20}
}
