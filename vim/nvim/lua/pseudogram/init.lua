--local telescope = require('telescope')
--
--telescope.setup {
--  pickers = {
--    find_files = {
--      hidden = true
--    }
--  }
--}

-- require'lspconfig'.pyright.setup{
--   on_attach = function() print("hello David")
--   end,
-- }

require('pseudogram.lsp')
require('lint').linters_by_ft = {
  markdown = {'vale',},
  typescriptreact = {'eslint',}
}
-- au BufWritePost <buffer> lua require('lint').try_lint()

