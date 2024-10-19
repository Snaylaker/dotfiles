-- Pull in the wezterm API
local wezterm = require 'wezterm'
local mux = wezterm.mux
local config = wezterm.config_builder()

config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = 'RESIZE'
config.color_scheme = 'tokyonight'
config.font_size = 16
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

wezterm.on('gui-startup', function()
  local window = mux.spawn_window {}
  window:gui_window():maximize()
end)

return config
