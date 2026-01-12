return {
  {
    'nvimtools/none-ls.nvim',
    config = function() end,
  },

  {
    'iamcco/markdown-preview.nvim',
    ft = { 'markdown' },
    build = function()
      vim.fn['mkdp#util#install']()
    end,
  },
}
