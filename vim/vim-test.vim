nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" make test commands execute using dispatch.vim
"let test#strategy = "neovim"
let g:test#echo_command = 0

let test#strategy = "dispatch"
let g:test#preserve_screen = 1
"let g:test#javascript#runner = 'nx'
set history=1000
