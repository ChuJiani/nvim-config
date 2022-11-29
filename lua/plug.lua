-- [[ plug.lua ]]

return require("packer").startup(function(use)
    -- [[ Packer itself]]
    use("wbthomason/packer.nvim")
    ------------------------------------

    -- [[ Auto Pair ]]
    use("windwp/nvim-autopairs")

    -- [[ LSP ]]
    use("neovim/nvim-lspconfig")

	-- null-ls 用于格式化和其他
	use({
		"jose-elias-alvarez/null-ls.nvim",
	})

	-- 补全引擎
	use("hrsh7th/nvim-cmp")
	-- Snippet 引擎
	use({ "L3MON4D3/LuaSnip" })
	-- 补全源
	use({ "ray-x/lsp_signature.nvim" })
	use({ "saadparwaiz1/cmp_luasnip" })
	use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
	use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
	use("hrsh7th/cmp-path") -- { name = 'path' }
	use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
	use("hrsh7th/cmp-nvim-lsp-signature-help") -- { name = 'nvim_lsp_signature_help' }
	use("rafamadriz/friendly-snippets")

	-- UI 增强
	use("onsails/lspkind-nvim")

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

