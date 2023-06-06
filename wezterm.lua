local colors = require("colors.bearded-gale").colors
local keys = require("mappings").keys
local utils = require("utils")
local wezterm = require("wezterm")

local config = {
	-- Themeing
	colors = colors,
	color_scheme = "Bearded-gale",
	font = wezterm.font("Hack Nerd Font"),
	font_size = 14,
	line_height = 1.1,
	use_fancy_tab_bar = false,
	window_background_opacity = 0.93,
	window_padding = {
		left = "10px",
		right = "7px",
		top = "10px",
		bottom = "0px",
	},
	-- Keys setup
	keys = keys,
	disable_default_key_bindings = true,
	-- Functionalities
	default_prog = { "wsl.exe" },
	enable_scroll_bar = true,
	hide_tab_bar_if_only_one_tab = true,
	launch_menu = {},
	min_scroll_bar_height = "0.5cell",
	scrollback_lines = 50000,
}

utils.insertLaunchMenu(config)

return config
