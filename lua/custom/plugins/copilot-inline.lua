return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup {
        suggestion = { enabled = true, auto_trigger = true },
        panel = { enabled = false },
      }

      vim.keymap.set('i', '<C-l>', function()
        require('copilot.suggestion').accept()
      end, { desc = 'Accept Copilot suggestion', silent = true })
    end,
  },

  {
    'zbirenbaum/copilot-cmp',
    dependencies = {
      'zbirenbaum/copilot.lua',
      'hrsh7th/nvim-cmp',
    },
    config = function()
      require('copilot_cmp').setup()
    end,
  },
}
