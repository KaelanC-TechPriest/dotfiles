-- Set lualine as statusline
-- See `:help lualine.txt`
require('lualine').setup {
  tabline = {
    lualine_a = {},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = '|',
    section_separators = '',
  },
}

