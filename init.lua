-- [[ init.lua ]]

-- Leader
vim.g.mapleader = ' '
vim.g.localleader = '\\'

-- Imports
require('vars')	-- Variables
require('opts')	-- Options
require('keys')	-- Keymaps
require('plug')	-- Plugins

-- Plugins
require('nvim-tree').setup{}
require('onedark').load()
