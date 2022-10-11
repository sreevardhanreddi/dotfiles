local status, packer = pcall(require, "packer")
if (not status) then
    print("Packer is not installed")
    return
end

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'nvim-lualine/lualine.nvim' -- Statusline
    use 'nvim-lua/plenary.nvim' -- Common utilities
    use { 'neoclide/coc.nvim', branch = 'release' }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use 'tjdevries/colorbuddy.nvim'
    use 'projekt0n/github-nvim-theme'
    use 'folke/tokyonight.nvim'
    use 'gruvbox-community/gruvbox'
    use 'kyazdani42/nvim-web-devicons' -- File icons


end)
