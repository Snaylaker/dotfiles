-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()
config.hide_tab_bar_if_only_one_tab = true

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'tokyonight'
config.font_size = 16
config.window_padding = {
  left = 0,
  right = 0,
  top = 2,
  bottom = 0,
}

return config
