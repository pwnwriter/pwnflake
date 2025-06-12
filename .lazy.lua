return {
  vim.lsp.config('nixd', {
    cmd = { 'nixd' },
    filetypes = { 'nix' },
    root_markers = { 'flake.nix', '.git' },
  }),

  vim.lsp.config('nil_ls', {
    cmd = { 'nil' },
    filetypes = { 'nix' },
    root_markers = { 'flake.nix', '.git' },
  }),

  vim.lsp.enable({ 'nixd', 'nil_ls' }),
}
