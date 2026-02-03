-- nvim v0.8.0
return {
  'hashivim/vim-terraform',
  lazy = true,
  ft = { 'terraform', 'tf', 'hcl' },
  config = function()
    vim.g.terraform_fmt_on_save = 1
    vim.g.terraform_align = 1
  end,
}
