-- Pull in the wezterm API
local wezterm = require 'wezterm'
local mux = wezterm.mux
local config = wezterm.config_builder()

-- Configuration options
config.use_dead_keys = true
config.use_ime = false
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = 'RESIZE'
config.color_scheme = 'tokyonight'
config.font_size = 20
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

-- Maximize the window on startup
wezterm.on('gui-startup', function(cmd)
  local pane, tab, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

-- Return the config to apply it
return config
