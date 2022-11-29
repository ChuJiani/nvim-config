-- [[ autocmd.lua ]]

local vim = vim
local api = vim.api
local M = {}

---WORKAROUND
api.nvim_create_autocmd({'BufEnter','BufAdd','BufNew','BufNewFile','BufWinEnter'}, {
    group = api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
    callback = function()
        vim.opt.foldmethod     = 'expr'
        vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
        api.nvim_command("normal zR")
    end
})
---ENDWORKAROUND

-- function to create a list of commands and convert them to autocommands
-------- This function is taken from https://github.com/norcalli/nvim_utils
function M.nvim_create_augroups(definitions)
    for group_name, definition in pairs(definitions) do
        api.nvim_command('augroup '..group_name)
        api.nvim_command('autocmd!')
        for _, def in ipairs(definition) do
            local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
            api.nvim_command(command)
        end
        api.nvim_command('augroup END')
    end
end

local autoCommands = {
    open_folds = {
        {"BufEnter, BufAdd, BufNew, BufNewFile, BufWinEnter", "*", "normal zR"}
    }
}

-- M.nvim_create_augroups(autoCommands)

