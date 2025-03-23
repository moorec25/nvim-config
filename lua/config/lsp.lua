require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "clangd", "verible" }
})

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})

local lspconfig = require("lspconfig")
--lspconfig.lua_ls.setup({})

lspconfig.clangd.setup({})

vim.keymap.set('n', '<leader>h', ":ClangdSwitchSourceHeader<CR>", {})    

