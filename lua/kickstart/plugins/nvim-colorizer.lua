return {
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup({
        '*', -- Highlight all files
        css = { rgb_fn = true }, -- Enable parsing rgb(...) in CSS
        html = { names = false }, -- Disable named colors in HTML
        -- }, { mode = 'foreground' }) -- Default mode for all files
      }, { mode = 'background' }) -- Default mode for all files
    end,
  },
}
