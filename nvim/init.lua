require('settings')
require('keymaps')

require('plugins')
require('plugins.telescope')
require('plugins.lualine')

pcall(vim.cmd, 'colorscheme tokyonight-moon')

require('lspconfig').tsserver.setup {}
