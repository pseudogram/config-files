" ____________________________________________________________________
"                        Install Vim Plugins
" ____________________________________________________________________

" Automatically install vim plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Theme
Plug 'gruvbox-community/gruvbox'

" Adds dev icons to other plugins (ie. nerdtree)
Plug 'ryanoasis/vim-devicons'

" Git Plugin
Plug 'tpope/vim-fugitive'

" comment code with: gc
Plug 'tpope/vim-commentary'

" Status & tab line that looks dope (like powerlevel 10k)
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Git diff markers
Plug 'airblade/vim-gitgutter'

" Javascript, Typescript, React & styled-components
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'alvan/vim-closetag'

" Spell Check
Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-spellcheck'
Plug 'kamykn/spelunker.vim'

" Make sure you use single quotes

" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple " Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | " Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" " Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" " Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf'

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Adds dev ions to other plugins (ie. nerdtree)
Plug 'ryanoasis/vim-devicons'

Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-rooter'

Plug 'nvim-lua/plenary.nvim' 
Plug 'BurntSushi/ripgrep'
Plug 'nvim-telescope/telescope.nvim'

" Lsp Plugins - if nvim unavailable, use coc
Plug 'neovim/nvim-lspconfig'

" Github copilot (AI pair programming)
Plug 'github/copilot.vim' 
" Initialize plugin system
call plug#end()

source $HOME/config-files/vim/closetag.vim
source $HOME/config-files/vim/spelunker.vim
source $HOME/config-files/vim/theme.vim
source $HOME/config-files/vim/vim-airline.vim
source $HOME/config-files/vim/sets.vim
source $HOME/config-files/vim/nvim/telescope.vim

" My custom lua plugins
lua require("pseudogram")

" To break down vim config into multiple files   
" https://www.gregjs.com/vim/2016/do-yourself-a-favor-and-modularize-your-vimrc-init-vim/
" https://stackoverflow.com/a/1414845
