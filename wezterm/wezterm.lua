local wezterm = require("wezterm")
local config = wezterm.config_builder()

local SOLID_LEFT_ARROW = utf8.char(0xe0b2)
local SOLID_RIGHT_ARROW = utf8.char(0xe0b0)
local blue = "#278bd2"
local light_green = "#859901"
local grey = "#9EACAD"
local black = "#000000"
local white = "#FFFFFF"
local yellow = "#FFC102"
local dark_yellow = "#B58900"
local light_blue = "#AADCFF"
local red = "#B7221E"
local transparent = "rgba(0, 0, 0, 0)"

config.default_prog = { "pwsh.exe", "-NoLogo" }
config.color_scheme = "Solarized Dark Higher Contrast"
config.hide_tab_bar_if_only_one_tab = false
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.window_decorations = "RESIZE"
config.font = wezterm.font("PlemolJP")
config.font_size = 16
config.enable_tab_bar = true
config.default_cursor_style = "SteadyBlock"
config.show_new_tab_button_in_tab_bar = false
config.window_background_opacity = 0.75
config.tab_max_width = 50
config.win32_system_backdrop = "Acrylic"

config.colors = {
	tab_bar = {
		background = transparent,
	},
	cursor_bg = "#e8e8e8",
	background = black,

	ansi = {
		"black",
		"maroon",
		light_green,
		yellow,
		blue,
		light_green,
		blue,
		light_blue,
	},

	brights = {
		light_blue,
		red,
		light_green,
		blue,
		light_green,
		"fuchsia",
		light_green,
		white,
	},
}

wezterm.on("format-tab-title", function(tab)
	local idx = " " .. tab.tab_index + 1 .. " "
	if tab.is_active then
		return {
			{ Background = { Color = dark_yellow } },
			{ Foreground = { Color = white } },
			{ Text = idx },
			{ Background = { Color = transparent } },
			{ Foreground = { Color = yellow } },
			{ Text = SOLID_RIGHT_ARROW },
		}
	else
		return {
			{ Background = { Color = transparent } },
			{ Foreground = { Color = white } },
			{ Text = idx },
		}
	end
end)
wezterm.on("update-right-status", function(window)
	window:set_right_status(wezterm.format({
		{ Background = { Color = transparent } },
		{ Foreground = { Color = white } },
		{ Attribute = { Italic = true } },
		{ Text = "Hello, World!" },
	}))
end)

config.keys = {
	{
		key = "f",
		mods = "SHIFT|CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
}

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

return config
