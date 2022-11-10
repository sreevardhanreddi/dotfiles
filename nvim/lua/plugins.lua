local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer can manage itself
  use 'nvim-lua/plenary.nvim' -- Common utilities

  use { 'nvim-telescope/telescope.nvim', tag = '0.1.0' }

  use {
    "williamboman/nvim-lsp-installer",
    "neovim/nvim-lspconfig",
  }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'p00f/nvim-ts-rainbow'
  use 'akinsho/toggleterm.nvim'
  use { 'akinsho/bufferline.nvim', tag = 'v3.*' }

  -- auto completion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'onsails/lspkind-nvim'
  use "saadparwaiz1/cmp_luasnip" -- Snippets source
  use "L3MON4D3/LuaSnip" -- Snippet engine

  use 'windwp/nvim-autopairs' -- Autopairs
  use 'windwp/nvim-ts-autotag' -- Autotags

  use 'tjdevries/colorbuddy.nvim'
  use 'projekt0n/github-nvim-theme'
  use 'folke/tokyonight.nvim'
  use 'gruvbox-community/gruvbox'
  use 'martinsione/darkplus.nvim'

  use 'nvim-tree/nvim-web-devicons' -- File icons
  use 'nvim-tree/nvim-tree.lua'

  use 'numToStr/Comment.nvim' -- Commenting

  use 'nvim-lualine/lualine.nvim' -- Statusline

  use 'lewis6991/gitsigns.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'

  use 'folke/which-key.nvim'

  use 'lukas-reineke/indent-blankline.nvim'

end)
