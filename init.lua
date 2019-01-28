hs.loadSpoon("ReloadConfiguration")
spoon.ReloadConfiguration:start()

hs.loadSpoon("WindowHalfsAndThirds")
spoon.WindowHalfsAndThirds:bindHotkeys({
  left_half    = { {         "alt", "cmd"          }, "Left"  },
  right_half   = { {         "alt", "cmd"          }, "Right" },
  top_half     = { {         "alt", "cmd"          }, "Up"    },
  bottom_half  = { {         "alt", "cmd"          }, "Down"  },
  top_left     = { { "ctrl",        "cmd"          }, "Left"  },
  top_right    = { { "ctrl",        "cmd"          }, "Right" },
  bottom_left  = { { "ctrl",        "cmd", "shift" }, "Left"  },
  bottom_right = { { "ctrl",        "cmd", "shift" }, "Right" },
  max_toggle   = { {         "alt", "cmd"          }, "f"     },
  undo         = { {         "alt", "cmd"          }, "z"     },
  center       = { {         "alt", "cmd"          }, "c"     },
  larger       = { { "ctrl", "alt",        "shift" }, "Right" },
  smaller      = { { "ctrl", "alt",        "shift" }, "Left"  },
})

hs.loadSpoon("WindowScreenLeftAndRight")
spoon.WindowScreenLeftAndRight:bindHotkeys(spoon.WindowScreenLeftAndRight.defaultHotkeys)
