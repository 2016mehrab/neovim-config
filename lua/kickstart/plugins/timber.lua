-- NOTE: Insert log statements blazingly fast and capture log results inline
return {
  'Goose97/timber.nvim',
  version = '*', -- Use for stability; omit to use `main` branch for the latest features
  event = 'VeryLazy',
  config = function()
    require('timber').setup {
      -- Configuration here, or leave empty to use defaults
    }
  end,
}
