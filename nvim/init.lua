require('settings')
require('keymaps')

require('plugins')
require('plugins.configs.telescope')
require('plugins.configs.lualine')

pcall(vim.cmd, 'colorscheme tokyonight-night')

require('lspconfig').tsserver.setup {}
require('plugins.configs.treesitter')
require('nvim-autopairs').setup {}
