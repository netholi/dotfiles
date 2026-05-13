local wezterm = require 'wezterm'
local config = {}

-- Disable the audible bell sound
config.audible_bell = 'Disabled'
config.font_size=10
config.enable_tab_bar=false
config.window_background_opacity=0.3
config.default_prog = { '/bin/bash', '-l' }
return config   

