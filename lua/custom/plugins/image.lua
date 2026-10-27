return {
  '3rd/image.nvim',
  cond = not vim.env.SSH_CONNECTION, -- needs luarocks/ImageMagick, skip on remote machines
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('image').setup()
  end,
}
