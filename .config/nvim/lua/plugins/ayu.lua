return {
  -- Add the Ayu theme
  {
    "Shatur/neovim-ayu",
    lazy = false,
    priority = 1000,
    config = function()
      require('ayu').setup({
        mirage = true, -- Set to use mirage variant
      })
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "ayu_mirage",
      },
    },
  },

  -- Configure LazyVim to use Ayu Mirage
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ayu-mirage",
    },
  },
}