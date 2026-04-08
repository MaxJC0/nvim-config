return {
  'abecodes/tabout.nvim',
  lazy = false,
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    -- 'L3MON4D3/LuaSnip', -- Falls du LuaSnip für Snippets nutzt
    -- 'hrsh7th/nvim-cmp', -- Falls du nvim-cmp für Autocompletion nutzt
  },
  config = function()
    require('tabout').setup {
      tabkey = '<Tab>', -- Taste zum Rausspringen
      backwards_tabkey = '<S-Tab>', -- Shift+Tab zum Zurückspringen
      act_as_tab = true, -- Verhält sich wie ein normaler Tab, wenn kein "Sprung" möglich ist
      act_as_shift_tab = false,
      default_tab = '<C-t>', -- Fallback
      default_shift_tab = '<C-d>',
      enable_backwards = true,
      completion = true, -- Wichtig für die Zusammenarbeit mit nvim-cmp
      tabouts = {
        { open = "'", close = "'" },
        { open = '"', close = '"' },
        { open = '`', close = '`' },
        { open = '(', close = ')' },
        { open = '[', close = ']' },
        { open = '{', close = '}' },
        { open = '<', close = '>' }, -- Sehr wichtig für Vue Tags!
      },
      ignore_beginning = true, -- Springt nicht, wenn du am Zeilenanfang stehst
      exclude = {}, -- Dateitypen, die ignoriert werden sollen
    }
  end,
}
