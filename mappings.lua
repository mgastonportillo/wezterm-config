local wezterm = require("wezterm")
local wact = wezterm.action
local M = {}

M.keys = {
	-- Pane related keys
	{ key = "s", mods = "ALT", action = wact.SplitHorizontal({ args = { "bash" } }) },
	{ key = "v", mods = "ALT", action = wact.SplitVertical({ args = { "bash" } }) },
	{ key = "h", mods = "ALT", action = wact.ActivatePaneDirection("Left") },
	{ key = "l", mods = "ALT", action = wact.ActivatePaneDirection("Right") },
	{ key = "k", mods = "ALT", action = wact.ActivatePaneDirection("Up") },
	{ key = "j", mods = "ALT", action = wact.ActivatePaneDirection("Down") },
	{ key = "h", mods = "CTRL|ALT", action = wact.AdjustPaneSize({ "Left", 1 }) },
	{ key = "j", mods = "CTRL|ALT", action = wact.AdjustPaneSize({ "Down", 1 }) },
	{ key = "k", mods = "CTRL|ALT", action = wact.AdjustPaneSize({ "Up", 1 }) },
	{ key = "l", mods = "CTRL|ALT", action = wact.AdjustPaneSize({ "Right", 1 }) },
	{ key = "c", mods = "ALT", action = wact.CloseCurrentPane({ confirm = true }) },
	-- Tab related keys
	{ key = "c", mods = "CTRL|ALT", action = wact.CloseCurrentTab({ confirm = true }) },
	{ key = "t", mods = "ALT", action = wact.SpawnTab("CurrentPaneDomain") },
	-- Tab navigation
	{ key = "1", mods = "ALT", action = wact.ActivateTab(0) },
	{ key = "2", mods = "ALT", action = wact.ActivateTab(1) },
	{ key = "3", mods = "ALT", action = wact.ActivateTab(2) },
	{ key = "4", mods = "ALT", action = wact.ActivateTab(3) },
	{ key = "5", mods = "ALT", action = wact.ActivateTab(4) },
	{ key = "6", mods = "ALT", action = wact.ActivateTab(5) },
	{ key = "7", mods = "ALT", action = wact.ActivateTab(6) },
	{ key = "8", mods = "ALT", action = wact.ActivateTab(7) },
	{ key = "h", mods = "CTRL|SHIFT", action = wact.ActivateTabRelative(-1) },
	{ key = "l", mods = "CTRL|SHIFT", action = wact.ActivateTabRelative(1) },
	-- Miscelaneous
	{ key = "F11", action = wact.ToggleFullScreen },
	{ key = "+", mods = "CTRL", action = wezterm.action.IncreaseFontSize },
	{ key = "-", mods = "CTRL", action = wezterm.action.DecreaseFontSize },
	-- Utilities
	{ key = "c", mods = "CTRL", action = wact.CopyTo("Clipboard") },
	{ key = "v", mods = "CTRL", action = wact.PasteFrom("Clipboard") },
	-- Debugging and core functionality
	{ key = "d", mods = "CTRL|ALT|SHIFT", action = wact.ShowDebugOverlay },
	{ key = "p", mods = "CTRL|SHIFT", action = wact.ActivateCommandPalette },
}

return M
