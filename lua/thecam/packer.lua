-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
-- Packer auto-sync on Neovim startup
vim.api.nvim_create_autocmd("VimEnter", {
    pattern = "*",
    callback = function()
        vim.cmd("PackerSync")
    end,
})
vim.opt.number = true
vim.opt.relativenumber = true
-- TokyoNight theme setup

vim.cmd[[colorscheme tokyonight]] -- Apply the TokyoNight theme
vim.g.tokyonight_style = "storm"
require'lspconfig'.r_language_server.setup{}
require('lspconfig').pyright.setup{}

require('lspconfig').julials.setup{}
require('lspconfig').gopls.setup{}

require('copilot')
return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment the two plugins below if you want to manage the language servers from neovim
    --- and read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
    -- {'williamboman/mason.nvim'},
    -- {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
}
use 'jpalardy/vim-slime'
vim.g.slime_target = "tmux"
vim.g.slime_default_config = {socket_name = "default", target_pane = "{down-of}"}
vim.g.slime_dont_ask_default = 1
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'L3MON4D3/LuaSnip'
use 'saadparwaiz1/cmp_luasnip'
use "folke/tokyonight.nvim"
use 'jalvesaq/Nvim-R'
use 'zbirenbaum/copilot.lua'
use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
use { 'dccsillag/magma-nvim', run = ':UpdateRemotePlugins' }
end)
