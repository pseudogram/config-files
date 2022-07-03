" Allow neoformat to use binarys that are project local. ie
" node_modules/.bin/prettier
let g:neoformat_try_node_exe = 1

" format file on save
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
