-- this line for types, by hovering and autocompletion (lsp required)
-- will help you understanding properties, fields, and what highlightings the color used for
---@type Base46Table
local M = {}

M.base_30 = {
  white = "#ffffff",
  black = "#141414",
  darker_black = "#121212",
  black2 = "#303030",
  one_bg = "#3b3b3b",
  one_bg2 = "#4a4a4a",
  one_bg3 = "#595959",
  grey = "#878787",
  grey_fg = "#a1a1a1",
  grey_fg2 = "#adadad",
  light_grey = "#bababa",
  red = "#ff0000",
  baby_pink = "#ffbbbb",
  pink = "#ffcccc",
  line = "#474747",
  green = "#23de42",
  vibrant_green = "#00ff00",
  nord_blue = "#7777ff",
  blue = "#0000ff",
  seablue = "#0000aa",
  yellow = "#ffff00",
  sun = "#ffbb00",
  purple = "#aa00aa",
  dark_purple = "#770077",
  teal = "#007777",
  orange = "#ff9900",
  cyan = "#00ffff",
  statusline_bg = "#2d2f3b",
  lightbg = "#41434f",
  pmenu_bg = "#b389ef",
  folder_bg = "#bd93f9"
}

M.base_16 = {
  base00 = "#141414",
  base01 = "#303030",
  base02 = "#bababa",
  base03 = "#dedede",
  base04 = "#151515",
  base05 = "#fae9e1",
  base06 = "#fff1e9",
  base07 = "#4a4a4a",
  base08 = "#ffaa11",
  base09 = "#11aaff",
  base0A = "#ff6600",
  base0B = "#50ee04",
  base0C = "#e408e9",
  base0D = "#90ffff",
  base0E = "#a904a5",
  base0F = "#dd5500"
}

M.polish_hl = {
  Comment = {
    italic =  true
  }
}

M.type = "dark"

--M = require("base46").override_theme(M, "cerebrigion")

return M
