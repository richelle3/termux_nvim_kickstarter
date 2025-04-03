return {
  'rose-pine/neovim',
  name = 'rose-pine',
  priority = 1000,
  config = function()
    require('rose-pine').setup({
      dark_variant = 'moon',      -- Options: 'moon', 'dawn', 'rose'
      disable_background = false, -- Set to true for a transparent background
      styles = {
        italics = false, -- Отключает курсив
      },
      highlight_groups = {        -- Customize specific highlight groups
        Normal = { bg = 'none' }, -- Example of making the Normal background transparent
      },
    })
    vim.cmd('colorscheme rose-pine')
  end,
}
