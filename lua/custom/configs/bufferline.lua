vim.opt.termguicolors = true
require("bufferline").setup{
  options = {
    numbers = true,
    show_buffer_close_icons = true,
    show_close_icon = true,
    show_buffer_index = true,
    enforce_minimum_width = true,
    minimum_width = 15,
    separator_space = ' ',
    highlight = {
      fill = 'BufferLineFill',
      background = 'BufferLineBg',
      normal = 'BufferLineNormal',
      inactive = 'BufferLineInactive',
      inactive_selected = 'BufferLineInactiveSelected',
      number = 'BufferLineNumber',
      indicator_selected = 'BufferLineIndicatorSelected',
      indicator = 'BufferLineIndicator'
    }
  }
}
