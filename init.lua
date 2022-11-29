-- [[ init.lua ]]

-- Leader
vim.g.mapleader = " "
vim.g.localleader = " "

-- Imports
require("vars")	    -- Variables
require("opts")	    -- Options
require("keys")	    -- Keymaps
require("plug")	    -- Plugins
require("autocmd")  -- Autocmd

-- Plugins
require("nvim-tree").setup{}                -- File System
require("onedark").load()                   -- Color Theme
require("lualine").setup()                  -- Status Line
require("plugins/treesitter")               -- Highlight
require("plugins/nvim-autopairs")           -- Auto Pair
require("toggleterm").setup()

-- LSP
require("lsp")

-- Unused
-- require("plugins/mason")                 -- LSP Package Manager
-- require("plugins/cmake-tools")           -- Cmake Support
