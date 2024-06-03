---@type Wezterm
local wezterm = require("wezterm")
---@type Action
local wa = wezterm.action

local keys = {
	-- Pane related keys
	{ key = "|", mods = "ALT", action = wa.SplitHorizontal({ args = { "bash" } }) },
	{ key = "'", mods = "ALT", action = wa.SplitVertical({ args = { "bash" } }) },
	{ key = "{", mods = "ALT", action = wa.ActivatePaneDirection("Left") },
	{ key = "}", mods = "ALT", action = wa.ActivatePaneDirection("Right") },
	{ key = "+", mods = "ALT", action = wa.ActivatePaneDirection("Up") },
	{ key = "-", mods = "ALT", action = wa.ActivatePaneDirection("Down") },
	{ key = "n", mods = "CTRL|ALT", action = wa.AdjustPaneSize({ "Left", 1 }) },
	{ key = "-", mods = "CTRL|ALT", action = wa.AdjustPaneSize({ "Down", 1 }) },
	{ key = ",", mods = "CTRL|ALT", action = wa.AdjustPaneSize({ "Up", 1 }) },
	{ key = "m", mods = "CTRL|ALT", action = wa.AdjustPaneSize({ "Right", 1 }) },
	{ key = "c", mods = "ALT", action = wa.CloseCurrentPane({ confirm = true }) },
	-- Tab related keys
	{ key = "x", mods = "CTRL|ALT", action = wa.CloseCurrentTab({ confirm = true }) },
	{ key = "t", mods = "ALT", action = wa.SpawnTab("CurrentPaneDomain") },
	-- Tab navigation
	{ key = "Tab", mods = "CTRL", action = wa.ActivateTabRelative(-1) },
	{ key = "Tab", mods = "CTRL|SHIFT", action = wa.ActivateTabRelative(1) },
	-- Miscelaneous
	{ key = "F11", action = wa.ToggleFullScreen },
	{ key = "+", mods = "CTRL", action = wa.IncreaseFontSize },
	{ key = "-", mods = "CTRL", action = wa.DecreaseFontSize },
	-- Utilities
	{ key = "c", mods = "CTRL", action = wa.CopyTo("Clipboard") },
	{ key = "v", mods = "CTRL", action = wa.PasteFrom("Clipboard") },
	-- Debugging and core functionality
	{ key = "d", mods = "CTRL|ALT", action = wa.ShowDebugOverlay },
	{ key = "p", mods = "CTRL|SHIFT", action = wa.ActivateCommandPalette },
}

return keys
