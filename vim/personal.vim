" ____________________________________________________________________
"                          Editor Settings
" ____________________________________________________________________

" filetype indent off
" syntax off
" Primeagen remaps
nnoremap <SPACE> <Nop>
map <SPACE> <Leader>

" remap jj to <ESC>
imap jj <Esc>
" nnoremap <Leader>rc :so $MYVIMRC

" Tab settings   -   https://superuser.com/a/782592
" softtabstop, sts : when you're editing a file and press the tab key, Vim uses this setting to define the width of the inserted tabulation (see softtabstop help, or type :help softtabstop in Vim).
set sts=2
" tabstop, ts : when Vim encounters a tabulation in a file you're opening, it displays the tab as {ts} spaces (see tabstop help, or type :help tabstop in Vim).
set ts=2 
" shiftwidth, sw : the number of spaces Vim uses when indenting, either using autoindent stuff or the usual >>, << commands. As Heptite noticed, this is what you were looking for in this particular case. And recent versions of Vim indeed allow you not to define this option, shiftwidth would then take the value defined by tabstop. Quite handy (see shiftwidth help).
set sw=2
" expand tabs to spaces
set et
set modifiable " Nerdtree add and delete
set mouse=a " Use mouse to click
set ignorecase " Ignore case when searching using /

"  Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
" if has("patch-8.1.1564")
"   " Recently vim can merge signcolumn and number column into one
"   set signcolumn=number
" else
"   set signcolumn=yes
" endif
set signcolumn=yes

" From Primeagen - https://youtu.be/DogKdiRx7ls
set smartindent
set exrc " use a local vimrc if it is presnet
set nu
set hidden
set noerrorbells
set nowrap
set noswapfile
set nobackup
" Let's save undo info!
if !isdirectory($HOME."/.vim")
  call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo-dir")
  call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif
set undodir=~/.vim/undo-dir
set undofile
set incsearch
set scrolloff=8
set colorcolumn=80
set cmdheight=2 " more space for displaying messages
" esc to clear highlighting after a search
map <esc> :noh <CR>

" ____________________________________________________________________
"                     Editor Visual Settings
" ____________________________________________________________________

set relativenumber

let g:gitgutter_async=0
" let g:gitgutter_grep=''

" ____________________________________________________________________
"                            Spelling
" ____________________________________________________________________

" Vim built in Spelling
" set spell
set nospell

" Don't mark URL-like things as spelling errors
" syn match UrlNoSpell '\w\+:\/\/[^[:space:]]\+' contains=@NoSpell


