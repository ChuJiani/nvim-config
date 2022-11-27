-- [[ plug.lua ]]

return require('packer').startup(function(use)
    -- [[ Plugins Go Here ]]
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- [[ Theme ]]
    use { 'navarasu/onedark.nvim' }

    -- [[ Markdown Preview ]]
    use { "iamcco/markdown-preview.nvim" }

    -- [[ Config ]]
    config = {
        package_root = vim.fn.stdpath('config') .. '/site/pack'
    }

end )

