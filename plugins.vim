call plug#begin('~/.vim/plugged')

" Plugins:

" Tools
Plug 'tpope/vim-eunuch'
Plug 'aserebryakov/vim-todo-lists'

" Editing
Plug 'editorconfig/editorconfig-vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'ntpeters/vim-better-whitespace'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'talek/obvious-resize'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'rstacruz/vim-closer'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-repeat'
Plug 'christoomey/vim-sort-motion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/vim-peekaboo'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'MattesGroeger/vim-bookmarks'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Text objects
Plug 'michaeljsmith/vim-indent-object'
Plug 'vim-scripts/argtextobj.vim'

" Git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tommcdo/vim-fugitive-blame-ext'

" Search
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Languages and frameworks
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ap/vim-css-color'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" UI
Plug 'ryanoasis/vim-devicons'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }

" Lint
Plug 'dense-analysis/ale'

" Reports
Plug 'wakatime/vim-wakatime'

call plug#end()
