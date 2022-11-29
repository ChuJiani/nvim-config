-- [[ plug.lua ]]

return require("packer").startup(function(use)
    -- [[ Packer itself]]
    use("wbthomason/packer.nvim")
    ------------------------------------

    -- [[ Auto Pair ]]
    use("windwp/nvim-autopairs")

    -- [[ LSP ]]
    use("neovim/nvim-lspconfig")
    ------------------------------------

    -- [[ Theme ]]
    use("navarasu/onedark.nvim")

    -- [[ Status Line ]]
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }

    -- [[ Toggle Terminal ]]
    use {
        "akinsho/toggleterm.nvim", tag = "*", config = function()
    end}

    -- [[ Tree Sitter ]]
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    ------------------------------------
    
    -- [[ Tree ]]
    use {
        "kyazdani42/nvim-tree.lua",
        requires = "kyazdani42/nvim-web-devicons"
    }

    -- [[ Markdown Preview ]]
    use("iamcco/markdown-preview.nvim")
    -- run ":call mkdp#uti#install()" to complete the installation.

    -- [[ Config ]]
    config = {
        package_root = vim.fn.stdpath("config") .. "/site/pack"
    }

end)

