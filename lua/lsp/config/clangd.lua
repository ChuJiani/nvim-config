-- require'lspconfig'.clangd.setup{}
local lspconfig = require("lspconfig")
lspconfig.clangd.setup{
    cmd = {
        "clangd",
        "--compile-commands-dir=${workspaceFolder}/build",
        "--background-index",
        "--clang-tidy",
        "--pch-storage=memory",
        "-j=14"
    }
}
