local keys = require("mappings").keys
local utils = require("utils")
local wezterm = require("wezterm")

local config = {
	-- Themeing
	color_scheme = "Catppuccin Mocha",
	font = wezterm.font_with_fallback({ "JetBrainsMono NF", "Hack Nerd Font" }),
	font_size = 16,
	line_height = 1.1,
	window_background_opacity = 0.9,
	win32_system_backdrop = "Acrylic",
	window_padding = {
		left = "20px",
	},
	-- Keys setup
	keys = keys,
	disable_default_key_bindings = true,
	-- Functionalities
	-- enable_scroll_bar = true,
	default_prog = { "wsl" },
	-- enable_tab_bar = false,
	window_decorations = "INTEGRATED_BUTTONS|RESIZE",
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = false,
	launch_menu = {},
	min_scroll_bar_height = "0.5cell",
	scrollback_lines = 50000,
}

utils.insertLaunchMenu(config)
utils.listenerZenMode()

return config
