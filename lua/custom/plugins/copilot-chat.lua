return {
  {
    'olimorris/codecompanion.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
    },

    opts = {
      log_level = 'DEBUG',
    },

    config = function(_, opts)
      require('codecompanion').setup(opts)

      -- Chat window
      vim.keymap.set('n', '<leader>cc', '<cmd>CodeCompanion chat<cr>', {
        desc = 'Open CodeCompanion Chat',
      })

      -- Inline edit on selected code
      vim.keymap.set('v', '<leader>ci', '<cmd>CodeCompanion inline<cr>', {
        desc = 'Inline edit with CodeCompanion',
      })

      -- Explain selected code
      vim.keymap.set('v', '<leader>ce', '<cmd>CodeCompanion explain<cr>', {
        desc = 'Explain selected code',
      })

      -- Fix selected code
      vim.keymap.set('v', '<leader>cf', '<cmd>CodeCompanion fix<cr>', {
        desc = 'Fix selected code',
      })

      -- Refactor selected code
      vim.keymap.set('v', '<leader>cr', '<cmd>CodeCompanion refactor<cr>', {
        desc = 'Refactor selected code',
      })
    end,
  },
}
