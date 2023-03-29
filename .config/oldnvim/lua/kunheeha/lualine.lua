require('lualine').setup({
  options = {
    icons_enabled = true,
    theme = 'catppuccin',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = {},     -- Filetypes to disable lualine for.
    always_divide_middle = true, -- When set to true, left sections i.e. 'a','b' and 'c'
    globalstatus = true,        -- enable global statusline (have a single statusline
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {'filename'},
    lualine_x = {'filetype', 'diagnostics'},
    lualine_y = {'progress'},
    lualine_z = {'location'},
  },
  tabline = {
    lualine_a = {'buffers'},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {'tabs'},
  },
  extensions = {}
})
