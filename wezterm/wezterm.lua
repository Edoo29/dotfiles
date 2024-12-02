local wezterm = require("wezterm")
local config = wezterm.config_builder()
config.default_prog = { "pwsh.exe", "-NoLogo" }
config.color_scheme = "Solarized Dark Higher Contrast (Gogh)"
config.hide_tab_bar_if_only_one_tab = false
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.window_decorations = "RESIZE"
config.font = wezterm.font("PlemolJP", { weight = "Medium" })
config.font_size = 14
config.enable_tab_bar = true
config.default_cursor_style = "SteadyBlock"
config.show_new_tab_button_in_tab_bar = false
config.window_background_opacity = 0.85
config.tab_max_width = 50

config.colors = {
	tab_bar = {
		background = "#012B36",
		-- active_tab = {
		-- 	bg_color = "#278BD2",
		-- 	fg_color = "#000000",
		-- },
		-- inactive_tab = {
		-- 	bg_color = "#9EACAD",
		-- 	fg_color = "#000000",
		-- },
	},
	cursor_bg = "#e8e8e8",
	background = "#0B1212",
}

local SOLID_LEFT_ARROW = utf8.char(0xe0b2)
local SOLID_RIGHT_ARROW = utf8.char(0xe0b0)
local RIGHT_ARROW = utf8.char(0xe0b1)
local blue = "#278bd2"
local green = "#012B36"
local grey = "#9EACAD"
local dark_grey = "#586E75"
local black = "#000000"
local white = "#FFFFFF"
local yellow = "#FFC102"
local dark_yellow = "#B58900"

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	local idx = " " .. tab.tab_index + 1 .. " "
	local title = " " .. tab.active_pane.title .. " "
	if tab.is_active then
		return {
			{ Background = { Color = green } },
			{ Foreground = { Color = grey } },
			{ Text = " " },
			{ Background = { Color = grey } },
			{ Foreground = { Color = green } },
			{ Text = SOLID_RIGHT_ARROW },
			{ Background = { Color = grey } },
			{ Foreground = { Color = black } },
			{ Text = idx },
			{ Background = { Color = dark_yellow } },
			{ Foreground = { Color = white } },
			{ Text = SOLID_RIGHT_ARROW },
			{ Background = { Color = dark_yellow } },
			{ Foreground = { Color = white } },
			{ Text = title },
			{ Background = { Color = green } },
			{ Foreground = { Color = yellow } },
			{ Text = SOLID_RIGHT_ARROW },
		}
	else
		return {
			{ Background = { Color = green } },
			{ Foreground = { Color = grey } },
			{ Text = " " },
			{ Background = { Color = green } },
			{ Foreground = { Color = grey } },
			{ Text = idx },
			{ Background = { Color = green } },
			{ Foreground = { Color = grey } },
			{ Text = RIGHT_ARROW },
			{ Background = { Color = green } },
			{ Foreground = { Color = grey } },
			{ Text = title },
		}
	end
end)
wezterm.on("update-right-status", function(window)
	window:set_right_status(wezterm.format({
		{ Foreground = { Color = "#9eacad" } },
		{ Text = SOLID_LEFT_ARROW },
		{ Foreground = { Color = "#000000" } },
		{ Background = { Color = "#9eacad" } },
		{ Text = " Wezterm " },
		{ Foreground = { Color = "#278bd2" } },
		{ Text = SOLID_LEFT_ARROW },
		{ Foreground = { Color = "#000000" } },
		{ Background = { Color = "#278bd2" } },
		{ Text = " Hello, World! " },
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
	top = 15,
	bottom = 0,
}

return config
