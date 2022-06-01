--local telescope = require('telescope')
--
--telescope.setup {
--  pickers = {
--    find_files = {
--      hidden = true
--    }
--  }
--}


-- Native LSP Setup
-- get langauge server on path -> tsserver/pyright/gopls
-- tell nvim to use language server

require'lspconfig'.pyright.setup{
  on_attach = function() print("hello david")
  end,

} -- connect to server


-- other

--require("pseudogram.lsp")

