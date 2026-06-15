-- ~/.config/nvim/lua/plugins/colorscheme.lua

return {
  -- install themes
  { "folke/tokyonight.nvim" },
  { "catppuccin/nvim", name = "catppuccin" },
  { "ellisonleao/gruvbox.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "rose-pine/neovim" },
  { "navarasu/onedark.nvim" },
  { "Mofiqul/dracula.nvim" },
  { "Mofiqul/vscode.nvim" },
  { "olimorris/onedarkpro.nvim" },
  { "arcticicestudio/nord-vim" },
  { "marko-cerovac/material.nvim" },

  -- configure LazyVim theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "material-deep-ocean",
    },
  },
}
