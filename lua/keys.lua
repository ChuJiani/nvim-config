-- [[ keys.lua ]]
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true}
local pluginKeys = {}

-- base function
map('n', '<Leader>s', [[:w<CR>]], {})
map('n', '<Leader>q', [[:q<CR>]], {})

-- Toggle nvim-tree
map('n', '<Leader>n', [[:NvimTreeToggle<CR>]], {})

-- Toggle terminal
map('n', '<Leader>t', [[:ToggleTerm<CR>]], {})

-- Toggle code fold
map('n', '<Tab>', 'za', opt)

-- [[ LSP ]]
map('n', '<Leader>f', [[:lua vim.lsp.buf.code_action()]], {})

-- cmpeletion keys
-- 补全快捷键
pluginKeys.cmp = function(cmp)
	return {
		-- next option
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif require("luasnip").expand_or_jumpable() then
				require("luasnip").expand_or_jump()
			else
				fallback()
			end
		end, { "i", "s" }), -- 下一个

		["<Up>"] = cmp.mapping.select_prev_item(),

		["<CR>"] = cmp.mapping.confirm({
			select = true,
			behavior = cmp.ConfirmBehavior.Replace,
		}),
	}
end

return pluginKeys
