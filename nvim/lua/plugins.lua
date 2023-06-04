local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim") -- Packer can manage itself
	use("nvim-lua/plenary.nvim") -- Common utilities

	use({ "nvim-telescope/telescope.nvim", tag = "0.1.0" })

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{
				-- Optional
				"williamboman/mason.nvim",
				run = function()
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
	})

	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("p00f/nvim-ts-rainbow")
	use("akinsho/toggleterm.nvim")
	use({ "akinsho/bufferline.nvim", tag = "v3.*" })

	-- auto completion
	use("onsails/lspkind-nvim")
	use("windwp/nvim-autopairs") -- Autopairs
	use("windwp/nvim-ts-autotag") -- Autotags

	-- colorthemes
	use("tjdevries/colorbuddy.nvim")
	use("projekt0n/github-nvim-theme")
	use("folke/tokyonight.nvim")
	use("gruvbox-community/gruvbox")
	use("martinsione/darkplus.nvim")
	use({
		"loctvl842/monokai-pro.nvim",
		config = function()
			require("monokai-pro").setup()
		end,
	})

	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
	})

	use("numToStr/Comment.nvim")        -- Commenting

	use("nvim-lualine/lualine.nvim")    -- Statusline

	use("lewis6991/gitsigns.nvim")      -- GitSigns
	use("jose-elias-alvarez/null-ls.nvim") -- Null-ls for autoformatting

	use("folke/which-key.nvim")

	use("lukas-reineke/indent-blankline.nvim")

	use("gpanders/editorconfig.nvim")                 -- editorconfig

	use("mg979/vim-visual-multi", { branch = "master" }) -- visual multi

	use({
		"kylechui/nvim-surround",
		tag = "*",
		config = function()
			require("nvim-surround").setup({})
		end,
	})
end)
