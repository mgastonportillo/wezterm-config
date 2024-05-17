local wezterm = require("wezterm")
local wa = wezterm.action
local M = {}

M.keys = {
	-- Pane related keys
	{ key = "|", mods = "ALT", action = wa.SplitHorizontal({ args = { "bash" } }) },
	{ key = "|", mods = "SHIFT", action = wa.SplitVertical({ args = { "bash" } }) },
	{ key = "h", mods = "ALT", action = wa.ActivatePaneDirection("Left") },
	{ key = "l", mods = "ALT", action = wa.ActivatePaneDirection("Right") },
	{ key = "k", mods = "ALT", action = wa.ActivatePaneDirection("Up") },
	{ key = "j", mods = "ALT", action = wa.ActivatePaneDirection("Down") },
	{ key = "h", mods = "CTRL|ALT", action = wa.AdjustPaneSize({ "Left", 1 }) },
	{ key = "j", mods = "CTRL|ALT", action = wa.AdjustPaneSize({ "Down", 1 }) },
	{ key = "k", mods = "CTRL|ALT", action = wa.AdjustPaneSize({ "Up", 1 }) },
	{ key = "l", mods = "CTRL|ALT", action = wa.AdjustPaneSize({ "Right", 1 }) },
	{ key = "c", mods = "ALT", action = wa.CloseCurrentPane({ confirm = true }) },
	-- Tab related keys
	{ key = "c", mods = "CTRL|ALT", action = wa.CloseCurrentTab({ confirm = true }) },
	{ key = "t", mods = "ALT", action = wa.SpawnTab("CurrentPaneDomain") },
	-- Tab navigation
	{ key = "Tab", mods = "CTRL", action = wa.ActivateTabRelative(-1) },
	{ key = "Tab", mods = "CTRL|SHIFT", action = wa.ActivateTabRelative(1) },
	-- Miscelaneous
	{ key = "F11", action = wa.ToggleFullScreen },
	{ key = "+", mods = "CTRL", action = wezterm.action.IncreaseFontSize },
	{ key = "-", mods = "CTRL", action = wezterm.action.DecreaseFontSize },
	-- Utilities
	{ key = "c", mods = "CTRL", action = wa.CopyTo("Clipboard") },
	{ key = "v", mods = "CTRL", action = wa.PasteFrom("Clipboard") },
	-- Debugging and core functionality
	{ key = "d", mods = "CTRL|ALT|SHIFT", action = wa.ShowDebugOverlay },
	{ key = "p", mods = "CTRL|SHIFT", action = wa.ActivateCommandPalette },
}

return M
