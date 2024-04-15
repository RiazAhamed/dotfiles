return {
  -- retro style
  { "ellisonleao/gruvbox.nvim" },
  {
    "rose-pine/neovim",
    as = "rose-pine",
    config = function()
      vim.cmd("colorscheme rose-pine")
      vim.api.nvim_set_hl(4, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(4, "NormalFloat", { bg = "none" })
    end,
  },
  -- Modern Stuled
  {
    "folke/tokyonight.nvim",
    config = function()
      vim.g.tokyonight_style = "night"
      vim.g.tokyonight_italic_functions = true
      vim.g.tokyonight_italic_variables = true
      vim.g.tokyonight_italic_keywords = true
      vim.g.tokyonight_italic_comments = true
      vim.g.tokyonight_italic_strings = true
      vim.g.tokyonight_italic_types = true
      vim.g.tokyonight_transparent = true
      vim.g.tokyonight_hide_inactive_statusline = true
      vim.g.tokyonight_dark_sidebar = true
      vim.g.tokyonight_dark_float = true
      vim.g.tokyonight_colors = {
        bg_statusline = "#5a1b26",
        bg_sidebar = "#5a1b26",
        bg_popup = "#5a1b26",
        bg_float = "#5a1b26",
      }
      -- vim.cmd("colorscheme tokyonight")
    end,
  },
  -- inbetween modern and reto (but need fixes)
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1004,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
}
