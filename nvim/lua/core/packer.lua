-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- For packer
return require('packer').startup(function(use)
-- Packer can manage itself
use 'wbthomason/packer.nvim'

-- For Telescope
use {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
  	-- or                            , branch = '0.1.x',
  	requires = { {'nvim-lua/plenary.nvim'} }
}
-- For TreeSitter
use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use('nvim-treesitter/playground')
--For undo history tree
use('mbbill/undotree')
--For fugitive (git wrapper)
use('tpope/vim-fugitive')
end)
