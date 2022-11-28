-- [[ plug.lua ]]

return require("packer").startup(function(use)
    -- [[ Tree ]]
    use {
        "kyazdani42/nvim-tree.lua",
        requires = "kyazdani42/nvim-web-devicons"
    }

    -- [[ Theme ]]
    use("navarasu/onedark.nvim")

    -- [[ Markdown Preview ]]
    use("iamcco/markdown-preview.nvim")
    -- run ":call mkdp#uti#install()" to complete the installation.

    -- [[ Toggle Terminal ]]
    use {
        "akinsho/toggleterm.nvim", tag = "*", config = function()
        require("toggleterm").setup()
    end}

    -- [[ Config ]]
    config = {
        package_root = vim.fn.stdpath("config") .. "/site/pack"
    }

end)

