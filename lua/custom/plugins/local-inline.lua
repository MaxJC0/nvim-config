return {
  'ggml-org/llama.vim',
  init = function()
    vim.g.llama_config = {
      show_info = false,
      keymap_fim_accept_full = '<C-l>',
      keymap_fim_accept_partial = '<C-k>',
      keymap_fim_accept_word = '<C-j>',
    }
  end,
  config = function()
    vim.api.nvim_set_hl(0, 'llama_hl_fim_hint', { fg = '#808080' })
    vim.api.nvim_set_hl(0, 'llama_hl__fim_info', { fg = '#808080' })
  end,
}
