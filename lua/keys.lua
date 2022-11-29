-- [[ keys.lua ]]
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true}

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
