return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        theme = 'auto', -- oder dein bevorzugtes Theme
        globalstatus = true, -- eine Leiste für alle Fenster
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
      },
      -- Normale Statuszeile unten
      tabline = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff' },
        lualine_c = { { 'filename', path = 1 }, { 'navic', color_correction = 'nil' } },
        lualine_x = { 'diagnostics', 'lsp_status' },
        lualine_y = { 'filetype' },
        lualine_z = { { 'datetime', style = '%H:%M' } },
      },
      sections = {
        lualine_a = { 'searchcount' },
        lualine_b = { 'selectioncount' },
        lualine_c = {},
        lualine_x = { 'filesize' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
    }
  end,
}
