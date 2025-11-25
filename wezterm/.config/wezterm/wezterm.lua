-- Pull in the wezterm API
local wezterm = require 'wezterm'
local mux = wezterm.mux
local config = wezterm.config_builder()

-- Configuration options
config.use_dead_keys = true
config.use_ime = false
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = 'RESIZE'
-- config.font = wezterm.font 'Berkeley Mono'
config.color_scheme = 'tokyonight'
config.font_size = 16.0

-- Background wallpaper
config.background = {
  {
    source = {
      Color = '#1a1b26',
    },
    width = '100%',
    height = '100%',
    opacity = 1.0,
  },
  {
    source = {
      File = wezterm.config_dir .. '/wallpaper.jpeg',
    },
    opacity = 0.08,
  },
}

config.check_for_updates = true
config.check_for_updates_interval_seconds = 86400

config.window_padding = {
  left = 0,
  right = 0,
  top = 10,
  bottom = 0,
}
-- Adjust font size based on screen width
wezterm.on('window-resized', function(window, pane)
  local screen = wezterm.gui.screens().active
  if screen then
    local overrides = window:get_config_overrides() or {}
    -- Simple: 16pt + 1pt per 1000 pixels above 1920
    overrides.font_size = 16.0 + math.max(0, (screen.width - 1920) / 1000)
    window:set_config_overrides(overrides)
  end
end)

-- Maximize the window on startup
wezterm.on('gui-startup', function(cmd)
  local pane, tab, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

-- Return the config to apply it
return config
