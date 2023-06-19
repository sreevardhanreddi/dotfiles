local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- local status, packer = pcall(require, "packer")
-- if not status then
-- 	print("Packer is not installed")
-- 	return
-- end
--
-- -- Only required if you have packer configured as `opt`
-- vim.cmd([[packadd packer.nvim]])
--

vim.g.mapleader = " "
vim.g.maplocalleader = " "

return require("lazy").setup({
	-- use("wbthomason/packer.nvim") -- Packer can manage itself
	"nvim-lua/plenary.nvim", -- Common utilities

	{ "nvim-telescope/telescope.nvim", tag = "0.1.1" },

	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		dependencies = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{
				-- Optional
				"williamboman/mason.nvim",
				build = function()
					pcall(vim.cmd, "MasonUpdate")
				end,
			},
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },
			{ "hrsh7th/cmp-cmdline" },
			{ "saadparwaiz1/cmp_luasnip" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" }, -- Snippet engine
			{ "rafamadriz/friendly-snippets" },
		},
	},

	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	"p00f/nvim-ts-rainbow",
	"akinsho/toggleterm.nvim",
	{ "akinsho/bufferline.nvim", version = "*" },

	-- auto completion
	"onsails/lspkind-nvim",
	"windwp/nvim-autopairs", -- Autopairs
	"windwp/nvim-ts-autotag", -- Autotags

	-- colorthemes
	{ "tjdevries/colorbuddy.nvim" },
	{ "projekt0n/github-nvim-theme" },
	{ "folke/tokyonight.nvim" },
	{ "gruvbox-community/gruvbox" },
	{ "martinsione/darkplus.nvim" },
	{
		"loctvl842/monokai-pro.nvim",
		config = function()
			require("monokai-pro").setup()
		end,
	},

	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
	},

	"numToStr/Comment.nvim", -- Commenting

	"nvim-lualine/lualine.nvim", -- Statusline

	"lewis6991/gitsigns.nvim", -- GitSigns
	"jose-elias-alvarez/null-ls.nvim", -- Null-ls for autoformatting

	"folke/which-key.nvim",

	"lukas-reineke/indent-blankline.nvim",

	"gpanders/editorconfig.nvim", -- editorconfig

	{ "mg979/vim-visual-multi", branch = "master" }, -- visual multi

	{
		"kylechui/nvim-surround",
		version = "*",
		config = function()
			require("nvim-surround").setup({})
		end,
	},

	"github/copilot.vim",
})
