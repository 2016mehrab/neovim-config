return {
  'christoomey/vim-tmux-navigator',
  vim.keymap.set('n', 'c-h', ':TmuxNavigateLeft<cr>'),
  vim.keymap.set('n', 'c-j', ':TmuxNavigateDown<cr>'),
  vim.keymap.set('n', 'c-l', ':TmuxNavigateRight<cr>'),
  vim.keymap.set('n', 'c-k', ':TmuxNavigateUp<cr>'),
  -- cmd = {
  --   'TmuxNavigateLeft',
  --   'TmuxNavigateDown',
  --   'TmuxNavigateUp',
  --   'TmuxNavigateRight',
  --   'TmuxNavigatePrevious',
  -- },
  -- keys = {
  --   { '<c-w>h', ':TmuxNavigateLeft<cr>' },
  --   { '<c-w>j', ':TmuxNavigateDown<cr>' },
  --   { '<c-w>k', ':TmuxNavigateUp<cr>' },
  --   { '<c-w>l', ':TmuxNavigateRight<cr>' },
  --   { '<c-\\>', ':TmuxNavigatePrevious<cr>' },
  -- },
}
