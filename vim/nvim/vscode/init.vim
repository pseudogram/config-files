" ____________________________________________________________________
"                            Key Remaps 
" ____________________________________________________________________
 
" filetype indent off
" syntax off
" Primeagen remaps
nnoremap <SPACE> <Nop>
map <SPACE> <Leader>

" remap jj to <ESC>
imap jj <Esc>
" nnoremap <Leader>rc :so $MYVIMRC

" In visual mode J moves current line down one, K up one 
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

