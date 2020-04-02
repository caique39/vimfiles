call plug#begin('~/.vim/plugged')

" Plugins:

Plug 'tpope/vim-eunuch'

" Editing
Plug 'editorconfig/editorconfig-vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'ntpeters/vim-better-whitespace'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tomtom/tcomment_vim'
Plug 'talek/obvious-resize'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'rstacruz/vim-closer'
Plug 'tpope/vim-abolish'

" Git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" Search
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Languages and frameworks
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" UI
Plug 'ryanoasis/vim-devicons'
Plug 'joshdick/onedark.vim'

" Lint
Plug 'dense-analysis/ale'

" Reports
Plug 'wakatime/vim-wakatime'

call plug#end()
