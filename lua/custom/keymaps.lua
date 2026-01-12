-- Toggle comment with <C-#> (Ctrl + Shift + 3 on most keyboards)
vim.keymap.set('n', '<C-ü>', function()
  require('Comment.api').toggle.linewise.current()
end, { desc = 'Toggle comment' })

vim.keymap.set('v', '<C-ü>', function()
  require('Comment.api').toggle.linewise(vim.fn.visualmode())
end, { desc = 'Toggle comment (visual)' })
