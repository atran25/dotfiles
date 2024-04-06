-- Pull in wezterm API
local wezterm = require 'wezterm'
local mux = wezterm.mux

-- table to hold configurations
local config = {}

-- Provides cleaner error messages
if wezterm.config_builder then
    config = wezterm.config_builder()
end

wezterm.on("gui-startup", function()
    local tab, pane, window = mux.spawn_window{}
    window:gui_window():maximize()
end)

config.keys = {
    {
        key = 'n',
        mods = 'SHIFT|CTRL',
        action = wezterm.action.ToggleFullScreen,
    },
}

-- font & colorscheme
config.font = wezterm.font("JetBrains Mono")
config.color_scheme =  "Gruvbox Dark (Gogh)"
config.enable_scroll_bar = true
config.min_scroll_bar_height = '2cell'
config.colors = {
    scrollbar_thumb = '#222222', 
}
config.window_background_image = 'wallpapers/bg9.jpg'
config.window_background_image_hsb = {
    brightness = 0.05,
}

return config

