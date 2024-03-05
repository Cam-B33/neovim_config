require('lsp-zero')
-- don't copy/paste this if you don't know what is `lua_ls`.
-- yes, lsp-zero has changed since ThePrimeagen released his video "0 to LSP".
require('lspconfig').r_language_server.setup({})

require('lspconfig').pyright.setup{}

require('lspconfig').julials.setup{}
