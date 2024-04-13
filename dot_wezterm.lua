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

-- keybinds
config.keys = {
    {
        key = 'n',
        mods = 'SHIFT|CTRL',
        action = wezterm.action.ToggleFullScreen,
    },
    {
        key = 'PageUp',
        mods = "SHIFT",
        action = wezterm.action.ScrollByPage(-0.5)
    },
    {
        key = 'PageDown',
        mods = "SHIFT",
        action = wezterm.action.ScrollByPage(0.5)
    },
}

-- font & colorscheme
-- config.font = wezterm.font("JetBrains Mono")
config.font = wezterm.font("MesloLGS NF")
config.color_scheme =  "Gruvbox Dark (Gogh)"
config.enable_scroll_bar = false
config.min_scroll_bar_height = '5cell'
config.colors = {
    scrollbar_thumb = '#222222', 
}
config.enable_tab_bar = false
config.window_background_image = 'wallpapers/bg9.jpg'
config.window_background_image_hsb = {
    brightness = 0.005,
}
config.window_padding = {
    left = '1cell',
    right = '1cell',
    top = '0.5cell',
    bottom = '0.5cell',
}

return config

