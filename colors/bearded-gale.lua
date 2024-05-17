--- Complementary file for my .toml color scheme
--- Meant to be used alongside NvChad's "bearded-arc" theme in Neovim
--- Includes reference for the .toml file colors (see commented lines)
--- which can be used as an alternative way to apply the color scheme
---
--- Inspired in the "theme bearded-arc"
--- Author: @mgastonportillo (gale)

local M = {}

local c = {
	cblack = "#1c2433",
	cred = "#FF738A",
	cgreen = "#3CEC85",
	cyellow = "#EACD61",
	cblue = "#69C3FF",
	cmagenta = "#B788E5",
	ccyan = "#22ECDB",
	-- cwhite = "#FFFFFF",
	cwhite = "#ABB7C1",
	cbrightBlack = "#262e3d",
	cbrightRed = "#FF738A",
	cbrightGreen = "#9bdead",
	cbrightYellow = "#FF955C",
	cbrightBlue = "#69C3FF",
	cbrightMagenta = "#B78AFF",
	cbrightCyan = "#77aed7",
	cbrightWhite = "#ABB7C1",
	-- Custom
	cdarkGrey = "#3a4251",
	cdarkGreyAlt = "#303847",
	cdarkerGrey = "#232b3a",
	cdarkGreen = "#52ad70",
	cmediumGrey = "#626a79",
}

M.colors = {
	-- foreground = c.cwhite,
	-- background = c.cblack,
	-- cursor_fg = c.cblack,
	-- cursor_bg = c.cdarkGreen,
	-- cursor_border = c.cdarkGreen,
	-- selection_fg = "none",
	-- selection_bg = c.cdarkGreyAlt,
	-- ansi = {
	--   c.cblack,
	--   c.cred,
	--   c.cgreen,
	--   c.cyellow,
	--   c.cblue,
	--   c.cmagenta,
	--   c.ccyan,
	--   c.cwhite
	-- },
	-- brights = {
	--   c.cbrightBlack,
	--   c.cbrightRed,
	--   c.cbrightGreen,
	--   c.cyellow,
	--   c.cbrightBlue,
	--   c.cbrightMagenta,
	--   c.ccyan,
	--   c.cbrightWhite,
	-- },
	split = c.cdarkGrey,
	compose_cursor = c.cbrightYellow,
	scrollbar_thumb = c.cdarkGrey,
	tab_bar = {
		background = c.cblack,
		active_tab = {
			bg_color = c.cblack,
			fg_color = c.cbrightWhite,
			intensity = "Normal",
			underline = "None",
			italic = false,
			strikethrough = false,
		},
		inactive_tab = {
			bg_color = c.cdarkerGrey,
			fg_color = c.cmediumGrey,
		},
		inactive_tab_hover = {
			bg_color = c.cdarkGrey,
			fg_color = c.cmediumGrey,
		},
		new_tab = {
			bg_color = c.cblack,
			fg_color = c.cbrightWhite,
		},
		new_tab_hover = {
			bg_color = c.cdarkGrey,
			fg_color = c.cbrightWhite,
		},
	},
}

return M
