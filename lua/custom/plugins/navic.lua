return {
  'SmiteshP/nvim-navic',
  dependencies = 'neovim/nvim-lspconfig',
  opts = {
    lsp = {
      auto_attach = true, -- Versucht sich automatisch an LSPs zu hängen
    },
    highlight = true,
    separator = ' > ',
    depth_limit = 3, -- Verhindert, dass die Leiste bei tiefen HTML-Strukturen zu lang wird
  },
}
