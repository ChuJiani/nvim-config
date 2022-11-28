-- [[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- base function
map('n', '<Leader>s', [[:w<CR>]], {})
map('n', '<Leader>q', [[:q<CR>]], {})

-- Toggle nvim-tree
map('n', '<Leader>n', [[:NvimTreeToggle<CR>]], {})

-- Toggle terminal
map('n', '<Leader>t', [[:ToggleTerm<CR>]], {})
