-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.font = wezterm.font("ComicShannsMono Nerd Font")
config.font_size = 16.0
config.color_scheme = "tokyonight"
config.window_background_opacity = 0.7
config.macos_window_background_blur = 10
config.window_decorations = "RESIZE"
config.enable_tab_bar = false
config.window_padding = {
	left = 20,
	right = 20,
	top = 20,
	bottom = 20,
}

-- and finally, return the configuration to wezterm
return config
