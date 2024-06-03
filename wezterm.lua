---@type Wezterm
local wezterm = require("wezterm")
local mappings = require("wz-mappings")
---@type Config
local cf = wezterm.config_builder()

local config = {
	color_scheme = "Catppuccin Mocha",
	font = wezterm.font_with_fallback({ "JetBrainsMono NF", "Hack Nerd Font" }),
	font_size = 16,
	line_height = 1.1,
	window_background_opacity = 0.9,
	win32_system_backdrop = "Acrylic",
	window_padding = {
		left = "20px",
	},
	keys = mappings,
	disable_default_key_bindings = true,
	default_domain = "WSL:Ubuntu",
	window_decorations = "INTEGRATED_BUTTONS|RESIZE",
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = false,
	launch_menu = {},
	min_scroll_bar_height = "0.5cell",
	scrollback_lines = 50000,
	-- enable_tab_bar = false,
	-- enable_scroll_bar = true,
}

for k, v in pairs(config) do
	cf[k] = v
end

wezterm.on("window-focus-changed", function(window)
	local overrides = window:get_config_overrides() or {}

	if window:is_focused() then
		overrides.colors.cursor_bg = nil
		window:set_config_overrides(overrides)
	else
		overrides.colors.cursor_border = "#222222"
		overrides.colors.cursor_bg = "#222222"
		overrides.colors.cursor_fg = "#222222"
		window:set_config_overrides(overrides)
	end
end)

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	-- Add pwsh entry
	table.insert(config.launch_menu, {
		label = "New Tab (domain: `Windows`) - PowerShell",
		args = { "pwsh.exe", "-NoLogo" },
	})
end

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	-- Add pwsh entry
	table.insert(config.launch_menu, {
		label = "New Tab (domain: `Windows`) - PowerShell",
		args = { "pwsh.exe", "-NoLogo" },
	})
end

return config
